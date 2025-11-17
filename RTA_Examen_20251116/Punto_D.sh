/Crea_Carpetas_Nardi/{tasks,handlers,defaults,vars,meta}
mkdir -p roles/Cambia_Propiedad_Nardi/{tasks,handlers,defaults,vars,meta}
mkdir -p roles/Sudoers_Nardi/{tasks,handlers,defaults,vars,meta}
---
- name: Ejecución completa del TP
  hosts: localhost
  become: yes

  roles:
    - 2PRecuperatorio
    - Crea_Carpetas_Nardi
    - Cambia_Propiedad_Nardi
    - Sudoers_Nardi
---
   - name: Crear grupos del recuperatorio
     ansible.builtin.group:
	name: "{{ item }}"
	state: present
     loop:
       - GProfesores
       - GAlumnos
	
   - name: Crear usuario profesor
     ansible.builtin.user:				
     	name: profesor
	groups: GProfesores
     	state: present
     	create_home: yes
   - name: Crear usuario alumno
     	ansible.builtin.user:
     	name: alumno
     	groups: GAlumnos
     	state: present
     	create_home: yes
---

- name: Cambiar propietario de /UTN/Profesor
  become: yes
  file:
     path: /UTN/Profesor
     owner: profesor
     group: GProfesores
     state: directory

- name: Cambiar propietario de /UTN/Alumno
  become: yes
  file:
     path: /UTN/Alumno
     owner: alumno
     group: GAlumnos
     state: directory

---
- name: Crear carpeta /UTN
     become: yes
     file:
     	path: /UTN
     	state: directory
     	mode: '0755'

- name: Crear carpeta /UTN/Profesor
     become: yes
     file:
     	path: /UTN/Profesor
     	state: directory
	mode: '0755'

- name: Crear carpeta /UTN/Alumno
     become: yes										
     file:
     	path: /UTN/Alumno	
	state: directory
	mode: '0755'																									
---																									   
- name: Crear archivo sudoers para Nardi	
  file:
	path: /etc/sudoers.d/nardi													
	state: touch
	mode: '0440'											
- name: Agregar grupo GProfesores a sudoers sin password					
  become: yes	
  lineinfile:	
  	path: /etc/sudoers.d/nardi
  	line: "%GProfesores ALL=(ALL) NOPASSWD: ALL"
	state: present
	validate: /usr/sbin/visudo -cf %s
