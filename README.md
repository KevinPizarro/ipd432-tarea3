# Tarea 3

## Sobre el repositorio

Este repositorio fue desarrollado para la tarea 3 de la asignatura IPD432 de la Universidad Técnica Federico Santa María. El objetivo es explorar y explotar el paralelismo de los sistemas digitales a través de un coprocesador de operaciones vectoriales. Particularmente, se trabaja con la tarjeta de desarrollo [Nexys A7](https://digilent.com/reference/programmable-logic/nexys-a7/start) basada en la FPGA Artix-7 de Xilinx.

## Estructura del repositorio

La estructura que sigue el repositorio cuenta con un espacio de trabajo, los diagramas utilizados en el reporte, una carpeta con los archivos entregables y finalmente el archivo README.

```
    - Diagramas
    - Entregables
        - Comb
            Source files
            Constraints
        - Pipelined
            Source files
            Constraints
    - MATLAB
        coprocessorTesting.m
    - Python
        plot_ILA.py
        archivos de ILA formato csv
    - Workspace
        - Tarea_3_fullcomb
            Proyecto de Vivado
            ...
        - Tarea_3_pipelined
            Proyecto de Vivado
            ...
        - lfsr_tutorial_src
            Archivos relativos al adder-tree y LFSR.
    - README.md
```

Principalmente el directorio [**Workspace**](https://gitlab.com/ipd432/tarea3/-/tree/main/Workspace) posee los proyectos de Vivado en su completitud, dentro de él se encuentran los dos proyectos asociados a la tarea: una basada en lógica fully-combinational y otra basada en lógica fully-pipelined. Luego el directorio [**Entregables**](https://gitlab.com/ipd432/tarea3/-/tree/main/Entregables) posee las carpetas Comb y Pipelined, al igual que el espacio de trabajo corresponden a las lógicas combinacionales y pipelined respectivamente, en el directorio sólo se encuentran los archivos fuente y constraints utilizadas. La carpeta [**MATLAB**](https://gitlab.com/ipd432/tarea3/-/tree/main/MATLAB) posee el archivo que actúa sobre el computador como host y sus respectivos archivos de funciones. El directorio [**Python**](https://gitlab.com/ipd432/tarea3/-/tree/main/Python) posee principalmente el archivo fuente para poder graficar y exportar en formato svg los datos medidos con el ILA (archivos csv).Finalmente, la carpeta Diagramas es utilizada meramente para los diagramas utilizados en el reporte escrito.

## Replicación

Para obtener los resultados del reporte escrito se hace uso de los proyectos del **Workspace** a través de [Vivado v2022.1](https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/vivado-design-tools/2022-1.html) (64-bit) en un dispositivo con Windows 10. Además, para el dispositivo host se debe utilizar [MATLAB R2022b](https://matlab.mathworks.com/).

Para replicar basta con seguir los siguientes pasos:

1. Abrir el proyecto de interés (Tarea_3_fullcomb o Tarea_3_pipelined) en Vivado.
2. Conectar la tarjeta de desarrollo Nexys-7 al computador (dispositivo host).
3. Abrir el archivo coprocessorTesting.m en MATLAB y ejecutarlo.
4. En Vivado, presionar la opción Generate Bitstream.
5. Cargar en la tarjeta de desarrollo el archivo generado.
6. Hacer uso de la interfaz en MATLAB para verificar el funcionamiento.
7. OJO: Una vez definido el puerto serial, dicha parte del código debe ser comentada o bien usar el comando clear all al comienzo, lo cual no se recomienda ya que aumenta excesivamente el tiempo de ejecución.


Adicionalmente, si se desea replicar los reportes y mediciones es necesario revisar los reportes de timing y utilización de recursos de síntesis e implementación.

## Entregables

Los archivos en la carpeta **Entregables** son meramente para extracción de los módulos del proyecto y que no pese demasiado. Esto fomentando la reutilización de los módulos sin tener que poseer el proyecto en su completitud.

Si se quiere replicar los resultados a partir de los [entregables](https://gitlab.com/ipd432/tarea3/-/tree/main/Entregables) (sources+constraints) se deben seguir los siguientes pasos:

1. Crear un proyecto nuevo de Vivado
2. Importar las fuentes (scrs) y constraints (constr) del proyecto de interés
3. Si se trata de la versión combinacional, sintetizar con **Default Sinthesys** e implementar con **Default Implementation**
4. Si se trata de la versión pipelined, sintetizar con **Default Sinthesys** e implementar con **Area_Exploration**
5. Seguir los pasos de del 2. al 7. de la replicación anterior