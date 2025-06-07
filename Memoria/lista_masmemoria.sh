# lista_masmemoria.sh
# Muestra los 10 procesos que más memoria consumen
echo "Los 10 procesos que más memoria consumen:"
echo "------------------------------------------"
ps aux --sort=-%mem | head -n 11
