# live_plot.gp

set terminal kitty font "Fira Code,12" size 800,400
set border lw 1
set logscale y
set format y "%1.0e"
set title "Live pimpleFoam Residuals"
set xlabel "Iteration/Time"
set ylabel "Residual"
set key outside right top

while (1) {
    system("clear")

    # Reads solverInfo.dat directly
    plot "< cat postProcessing/solverInfo/*/solverInfo.dat 2>/dev/null" using 1:2 with lines title "p_initial", \
         "" using 1:4 with lines title "Ux_initial", \
         "" using 1:5 with lines title "Uy_initial"

    pause 2
}
