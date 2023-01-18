
[1mFrom:[0m /home/bart/repos/odin_project/Projects/merge_sort/merge_sort.rb:12 Object#merge:

    [1;34m10[0m: [32mdef[0m [1;34mmerge[0m(left_array, right_array, result = [])
    [1;34m11[0m:   binding.pry
 => [1;34m12[0m:   (left_array.length + right_array.length).times [32mdo[0m
    [1;34m13[0m:     [32mif[0m left_array.empty?
    [1;34m14[0m:       result << right_array.shift
    [1;34m15[0m:     [32melsif[0m right_array.empty?
    [1;34m16[0m:       result << left_array.shift
    [1;34m17[0m:     [32melsif[0m left_array[[1;34m0[0m] < right_array[[1;34m0[0m]
    [1;34m18[0m:       result << left_array.shift
    [1;34m19[0m:     [32melse[0m
    [1;34m20[0m:       result << right_array.shift
    [1;34m21[0m:     [32mend[0m
    [1;34m22[0m:     result
    [1;34m23[0m: 
    [1;34m24[0m:   [32mend[0m
    [1;34m25[0m: [32mend[0m

