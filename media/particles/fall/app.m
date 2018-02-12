%%f = 1;
f = fopen("results.tex", "w");

for v0 = [0, 2.0, 3.0]
  fprintf(f, "$v_0 = \\num{%g}$\\\\\n", v0)
  for r0 = [40e-6, 60e-6, 80e-6]
    x = depth(r0, v0, [0.5e-3, 0.01, 0.1, 1], parameters());
    fprintf(f, "\\hspace{1em} $r_0 = \\num{%g}$ & %e & %e & %e & %e \\\\\n", r0*1e6, x)
  end
end

fclose(f);
