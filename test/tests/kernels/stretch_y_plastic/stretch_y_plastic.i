###############################################################################
#                                stretch_y.i                                  #
###############################################################################
# A ``sign of life'' test which makes sure that a simple stretching test      #
# problem runs to completion.                                                 #
###############################################################################

[Mesh]
  type = GeneratedMesh
  displacements = 'disp_x disp_y disp_z'
  dim = 3
  nx = 1
  ny = 1
  nz = 1
#  file = unit_cube.e
[]

[Variables]
  [./disp_x]
#    [./InitialCondition]
#      type = RandomIC
#      min  = -0.1
#      max  =  0.1
#    [../]
##    scaling = 1e-4
  [../]
  [./disp_y]
#    [./InitialCondition]
#      type = RandomIC
#      min  = -0.1
#      max  =  0.1
#    [../]
##    scaling = 1e-4
  [../]
  [./disp_z]
#    [./InitialCondition]
#      type = RandomIC
#      min  = -0.1
#      max  =  0.1
#    [../]
##    scaling = 1e-4
  [../]
  [./phi_xx]
##    order = CONSTANT
##    family = MONOMIAL
#    [./InitialCondition]
#      type = RandomIC
#      min  = -0.1
#      max  =  0.1
#    [../]
##    scaling = 1e-5
  [../]
  [./phi_yy]
##    order = CONSTANT
##    family = MONOMIAL
#    [./InitialCondition]
#      type = RandomIC
#      min  = -0.1
#      max  =  0.1
#    [../]
##    scaling = 1e-5
  [../]
  [./phi_zz]
##    order = CONSTANT
##    family = MONOMIAL
#    [./InitialCondition]
#      type = RandomIC
#      min  = -0.1
#      max  =  0.1
#    [../]
##    scaling = 1e-5
  [../]
  [./phi_yz]
##    order = CONSTANT
##    family = MONOMIAL
#    [./InitialCondition]
#      type = RandomIC
#      min  = -0.1
#      max  =  0.1
#    [../]
##    scaling = 1e-1
  [../]
  [./phi_xz]
##    order = CONSTANT
##    family = MONOMIAL
#    [./InitialCondition]
#      type = RandomIC
#      min  = -0.1
#      max  =  0.1
#    [../]
##    scaling = 1e-1
  [../]
  [./phi_xy]
##    order = CONSTANT
##    family = MONOMIAL
#    [./InitialCondition]
#      type = RandomIC
#      min  = -0.1
#      max  =  0.1
#    [../]
##    scaling = 1e-1
  [../]
  [./phi_zy]
##    order = CONSTANT
##    family = MONOMIAL
#    [./InitialCondition]
#      type = RandomIC
#      min  = -0.1
#      max  =  0.1
#    [../]
##    scaling = 1e-1
  [../]
  [./phi_zx]
##    order = CONSTANT
##    family = MONOMIAL
#    [./InitialCondition]
#      type = RandomIC
#      min  = -0.1
#      max  =  0.1
#    [../]
##    scaling = 1e-1
  [../]
  [./phi_yx]
##    order = CONSTANT
##    family = MONOMIAL
#    [./InitialCondition]
#      type = RandomIC
#      min  = -0.1
#      max  =  0.1
#    [../]
##    scaling = 1e-1
  [../]
[]

[Kernels]
  #Define the internal force balance equations
  [./force_1]
    type = InternalForce
    component = 0
    dof_num   = 0
    variable  = disp_x

    #Coupled variables
    u1     = disp_x
    u2     = disp_y
    u3     = disp_z
    phi_11 = phi_xx
    phi_22 = phi_yy
    phi_33 = phi_zz
    phi_23 = phi_yz
    phi_13 = phi_xz
    phi_12 = phi_xy
    phi_32 = phi_zy
    phi_31 = phi_zx
    phi_21 = phi_yx
  [../]
  [./force_2]
    type = InternalForce
    component = 1
    dof_num   = 1
    variable  = disp_y

    #Coupled variables
    u1     = disp_x
    u2     = disp_y
    u3     = disp_z
    phi_11 = phi_xx
    phi_22 = phi_yy
    phi_33 = phi_zz
    phi_23 = phi_yz
    phi_13 = phi_xz
    phi_12 = phi_xy
    phi_32 = phi_zy
    phi_31 = phi_zx
    phi_21 = phi_yx
  [../]
  [./force_3]
    type = InternalForce
    component = 2
    dof_num   = 2
    variable  = disp_z

    #Coupled variables
    u1     = disp_x
    u2     = disp_y
    u3     = disp_z
    phi_11 = phi_xx
    phi_22 = phi_yy
    phi_33 = phi_zz
    phi_23 = phi_yz
    phi_13 = phi_xz
    phi_12 = phi_xy
    phi_32 = phi_zy
    phi_31 = phi_zx
    phi_21 = phi_yx
  [../]
  #Define the internal couple balance equations
  [./couple_11]
    type = InternalCouple
    component_i = 0
    component_j = 0
    dof_num     = 3
    variable    = phi_xx

    #Coupled variables
    u1     = disp_x
    u2     = disp_y
    u3     = disp_z
    phi_11 = phi_xx
    phi_22 = phi_yy
    phi_33 = phi_zz
    phi_23 = phi_yz
    phi_13 = phi_xz
    phi_12 = phi_xy
    phi_32 = phi_zy
    phi_31 = phi_zx
    phi_21 = phi_yx
  [../]
  [./couple_12]
    type = InternalCouple
    component_i = 0
    component_j = 1
    dof_num     = 4
    variable    = phi_xy

    #Coupled variables
    u1     = disp_x
    u2     = disp_y
    u3     = disp_z
    phi_11 = phi_xx
    phi_22 = phi_yy
    phi_33 = phi_zz
    phi_23 = phi_yz
    phi_13 = phi_xz
    phi_12 = phi_xy
    phi_32 = phi_zy
    phi_31 = phi_zx
    phi_21 = phi_yx
  [../]
  [./couple_13]
    type = InternalCouple
    component_i = 0
    component_j = 2
    dof_num     = 5
    variable    = phi_xz

    #Coupled variables
    u1     = disp_x
    u2     = disp_y
    u3     = disp_z
    phi_11 = phi_xx
    phi_22 = phi_yy
    phi_33 = phi_zz
    phi_23 = phi_yz
    phi_13 = phi_xz
    phi_12 = phi_xy
    phi_32 = phi_zy
    phi_31 = phi_zx
    phi_21 = phi_yx
  [../]
  [./couple_21]
    type = InternalCouple
    component_i = 1
    component_j = 0
    dof_num     = 6
    variable    = phi_yx

    #Coupled variables
    u1     = disp_x
    u2     = disp_y
    u3     = disp_z
    phi_11 = phi_xx
    phi_22 = phi_yy
    phi_33 = phi_zz
    phi_23 = phi_yz
    phi_13 = phi_xz
    phi_12 = phi_xy
    phi_32 = phi_zy
    phi_31 = phi_zx
    phi_21 = phi_yx
  [../]
  [./couple_22]
    type = InternalCouple
    component_i = 1
    component_j = 1
    dof_num     = 7
    variable    = phi_yy

    #Coupled variables
    u1     = disp_x
    u2     = disp_y
    u3     = disp_z
    phi_11 = phi_xx
    phi_22 = phi_yy
    phi_33 = phi_zz
    phi_23 = phi_yz
    phi_13 = phi_xz
    phi_12 = phi_xy
    phi_32 = phi_zy
    phi_31 = phi_zx
    phi_21 = phi_yx
  [../]
  [./couple_23]
    type = InternalCouple
    component_i = 1
    component_j = 2
    dof_num     = 8
    variable    = phi_yz

    #Coupled variables
    u1     = disp_x
    u2     = disp_y
    u3     = disp_z
    phi_11 = phi_xx
    phi_22 = phi_yy
    phi_33 = phi_zz
    phi_23 = phi_yz
    phi_13 = phi_xz
    phi_12 = phi_xy
    phi_32 = phi_zy
    phi_31 = phi_zx
    phi_21 = phi_yx
  [../]
  [./couple_31]
    type = InternalCouple
    component_i = 2
    component_j = 0
    dof_num     = 9
    variable    = phi_zx

    #Coupled variables
    u1     = disp_x
    u2     = disp_y
    u3     = disp_z
    phi_11 = phi_xx
    phi_22 = phi_yy
    phi_33 = phi_zz
    phi_23 = phi_yz
    phi_13 = phi_xz
    phi_12 = phi_xy
    phi_32 = phi_zy
    phi_31 = phi_zx
    phi_21 = phi_yx
  [../]
  [./couple_32]
    type = InternalCouple
    component_i = 2
    component_j = 1
    dof_num     = 10
    variable    = phi_zy

    #Coupled variables
    u1     = disp_x
    u2     = disp_y
    u3     = disp_z
    phi_11 = phi_xx
    phi_22 = phi_yy
    phi_33 = phi_zz
    phi_23 = phi_yz
    phi_13 = phi_xz
    phi_12 = phi_xy
    phi_32 = phi_zy
    phi_31 = phi_zx
    phi_21 = phi_yx
  [../]
  [./couple_33]
    type = InternalCouple
    component_i = 2
    component_j = 2
    dof_num     = 11
    variable    = phi_zz

    #Coupled variables
    u1     = disp_x
    u2     = disp_y
    u3     = disp_z
    phi_11 = phi_xx
    phi_22 = phi_yy
    phi_33 = phi_zz
    phi_23 = phi_yz
    phi_13 = phi_xz
    phi_12 = phi_xy
    phi_32 = phi_zy
    phi_31 = phi_zx
    phi_21 = phi_yx
  [../]
[]

[AuxVariables]
  [./test]
    order = CONSTANT
    family = MONOMIAL
  [../]
  [./pk2_11]
    order = FIRST
    family = MONOMIAL
  [../]
  [./pk2_22]
    order = FIRST
    family = MONOMIAL
  [../]
  [./pk2_33]
    order = FIRST
    family = MONOMIAL
  [../]
  [./sigma_11]
    order = FIRST
    family = MONOMIAL
  [../]
  [./sigma_22]
    order = FIRST
    family = MONOMIAL
  [../]
  [./sigma_33]
    order = FIRST
    family = MONOMIAL
  [../]
  [./macro_isv]
    order = FIRST
    family = MONOMIAL
  [../]
  [./micro_isv]
    order = FIRST
    family = MONOMIAL
  [../]
  [./micro_gradient_isv_1]
    order = FIRST
    family = MONOMIAL
  [../]
  [./micro_gradient_isv_2]
    order = FIRST
    family = MONOMIAL
  [../]
  [./micro_gradient_isv_3]
    order = FIRST
    family = MONOMIAL
  [../]
[]

[AuxKernels]
  [./test]
    type = MaterialStdVectorAux
    property = PK2
    index = 0
    variable = test
  [../]
[]

[AuxKernels]
  [./pk2_11]
    type = MaterialStdVectorAux
    property = PK2
    index = 0
    variable = pk2_11
  [../]
[]

[AuxKernels]
  [./pk2_22]
    type = MaterialStdVectorAux
    property = PK2
    index = 4
    variable = pk2_22
  [../]
[]

[AuxKernels]
  [./pk2_33]
    type = MaterialStdVectorAux
    property = PK2
    index = 8
    variable = pk2_33
  [../]
[]

[AuxKernels]
  [./sigma_11]
    type = MaterialStdVectorAux
    property = SIGMA
    index = 0
    variable = sigma_11
  [../]
[]

[AuxKernels]
  [./sigma_22]
    type = MaterialStdVectorAux
    property = SIGMA
    index = 4
    variable = sigma_22
  [../]
[]

[AuxKernels]
  [./sigma_33]
    type = MaterialStdVectorAux
    property = SIGMA
    index = 8
    variable = sigma_33
  [../]
[]

[AuxKernels]
  [./macro_isv]
    type = MaterialStdVectorAux
    property = SDVS
    index = 50
    variable = macro_isv
  [../]
[]

[AuxKernels]
  [./micro_isv]
    type = MaterialStdVectorAux
    property = SDVS
    index = 51
    variable = micro_isv
  [../]
[]

[AuxKernels]
  [./micro_gradient_isv_1]
    type = MaterialStdVectorAux
    property = SDVS
    index = 52
    variable = micro_gradient_isv_1
  [../]
[]

[AuxKernels]
  [./micro_gradient_isv_2]
    type = MaterialStdVectorAux
    property = SDVS
    index = 53
    variable = micro_gradient_isv_2
  [../]
[]

[AuxKernels]
  [./micro_gradient_isv_3]
    type = MaterialStdVectorAux
    property = SDVS
    index = 54
    variable = micro_gradient_isv_3
  [../]
[]

[BCs]
  active = 'left_x back_z bottom_y top_y'
#  active = 'left_x back_z bottom_y bottom_x top_y top_x'
  [./left_x]
    type = DirichletBC
    #type = PresetBC
    variable = disp_x
    boundary = 'left'
    #boundary = 'left right bottom top front back'
    preset = true
    value = 0
  [../]
  [./back_z]
    type = DirichletBC
    #type = PresetBC
    variable = disp_z
    boundary = 'back'
    #boundary = 'left right bottom top front back'
    preset = true
    value = 0
  [../]
  [./bottom_x]
    type = DirichletBC
    #type = PresetBC
    variable = disp_x
    boundary = 'bottom'
    #boundary = 'left right bottom top front back'
    preset = true
    value = 0
  [../]
  [./bottom_y]
    type = DirichletBC
    #type = PresetBC
    variable = disp_y
    boundary = 'bottom'
    #boundary = 'left right bottom top front back'
    preset = true
    value = 0
  [../]
  [./top_x]
    type     = DirichletBC
    #type     = PresetBC
    variable = disp_x
    boundary = 'top'
    preset = true
    value    = 0
  [../]
  [./top_y]
    #type = DirichletBC
    #type = PresetBC
    type = FunctionDirichletBC
    variable = disp_y
    boundary = 'top'
    #boundary = 'left right bottom top front back'
    preset = true
    function = top_bc
  [../]
[]

[Functions]
  [./top_bc]
    type  = ParsedFunction
    value = 0.1*t
  [../]
[]

[Materials]
  [./linear_elastic]
    type = MicromorphicMaterial
#    material_fparameters = '0. 0. 0. 0. 0. 0. 0. 15.4 0. 0. 0. 0. 0. 0. 0. 0. 0. 0.'
#    material_fparameters = '8e3 11e3 2e3 1.538e3 -1e3 -1.39e3 -2.11e3 0. 0. 0. 0. 0. 0. 0.769 0. 0. 0. 0.'
#    material_fparameters = '8e3 11e3 2e3 1.538e3 -1e3 -1.39e3 -2.11e3 0.12 0.51 0.72 0.84 0.443 0.62 0.769 0.945 0.47 0.63 0.58'
#    material_fparameters = '29.48e3 25.48e3 1e3 0.4e3 -1.5e3 -1.4e3 -3e3 0 0 0 0 0 0 10e5 0. 0. 0. 0.'
#    material_fparameters = '29. 7. 60. 10. 10. 8. 5. 0. 0. 0. 0. 0. 0. 8. 0. 0. 0. 0.'
#    material_fparameters = '2. 696.47 65.84 5. -7.69 -51.92 38.61 -27.31 5.13 11. 1.85 -0.19 -1.08 -1.57 2.29 -0.61 5.97 -2.02 2.38 -0.32 -3.25 2. -51.92 5.13'
#    material_fparameters = '2 2.4e2 1.5e1 2 1.4e2 2.0e1 2 2.0e0 2.7e1 2 0.56 0.2 2 0.15 -0.2 2 0.82 0.1 2 0.70 0.3 2 0.40 -0.3 2 0.52 0.4 2 29.48e3 25.48e3 5 1e3 0.4e3 -1.5e3 -1.4e3 -3e3 11 0 0 0 0 0 0 10e5 0 0 0 0 2 .4e3 -3e3 0.5 0.5 0.5 1e-9 1e-9'
#    material_fparameters = '2 170 15 2 140 20 2 2 27 2 0.56 0.2 2 0.15 0.3 2 0.82 0.1 2 0.42 0.3 2 0.05 0.2 2 0.52 0.4 2 29480 25480 5 1000 400 -1500 -1400 -3000 11 0 0 0 0 0 0 1e+06 0 0 0 0 2 400 -3000 0.5 0.5 0.5 1e-09 1e-09'
    material_fparameters = '2 1e3 1e2 2 7e2 1e4 2 1e3 1e4 2 0. 0. 2 0. 0. 2 0. 0. 2 0. 0. 2 0. 0. 2 0. 0. 2 29480 25480 5 1000 400 -1500 -1400 -3000 11 0 0 0 0 0 0 1e+06 0 0 0 0 2 400 -3000 0.5 0.5 0.5 1e-09 1e-09'
#    material_fparameters = '2 2.4e2 1.5e1 2 2.4e2 2.0e1 2 2.0e0 2.7e1 2 0.56 0.2 2 0.15 -0.2 2 0.82 0.1 2 0.70 0.3 2 0.40 -0.3 2 0.52 0.4 2 696.47 65.84 5 -7.69 -51.92 38.61 -27.31 5.13 11 1.85 -0.19 -1.08 -1.57 2.29 -0.61 5.97 -2.02 2.38 -0.32 -3.25 2 -51.92 5.13 0.4 0.3 0.35 1e-8 1e-8'
    number_SDVS = 55
    model_name = "LinearElasticityDruckerPragerPlasticity"

    #Coupled variables
    u1     = 'disp_x'
    u2     = 'disp_y'
    u3     = 'disp_z'
    phi_11 = 'phi_xx'
    phi_22 = 'phi_yy'
    phi_33 = 'phi_zz'
    phi_23 = 'phi_yz'
    phi_13 = 'phi_xz'
    phi_12 = 'phi_xy'
    phi_32 = 'phi_zy'
    phi_31 = 'phi_zx'
    phi_21 = 'phi_yx'
  [../]
[]

[Preconditioning]
  [./SMP]
    type = SMP
#    type = FDP
    full = true
  [../]
[]

[Executioner]
  type = Transient

  solve_type = NEWTON
  petsc_options_iname = '-pc_type -pc_factor_mat_solver_package'
  petsc_options_value = 'lu       superlu_dist                 '

  line_search = none
  automatic_scaling = true

  nl_rel_tol = 1e-8
  nl_abs_tol = 1e-8
  nl_max_its = 50

  start_time = 0.0
  end_time = 1.0

  dtmin = 1e-12
  dtmax= 5

  [TimeStepper]
    type = IterationAdaptiveDT
    optimal_iterations = 8
    iteration_window = 3
    linear_iteration_ratio = 1000
    growth_factor=1.2
    cutback_factor=0.8
    dt = 0.1
  []
[]

[Outputs]
  exodus = true
  perf_graph = true
  print_linear_residuals = true
  interval = 1
  [log_output]
    type = CSV
  []
#  file_base = 'test'
  [pgraph]
    type = PerfGraphOutput
    execute_on = 'timestep_end final'
    level = 6
  []
[]




#[Executioner]
##  type = Steady
#  type = Transient
#  num_steps = 10
#  dt        = 0.05
##  solve_type = 'PJFNK'
#  solve_type = 'NEWTON'
#  nl_rel_tol = 1e-8
#  nl_abs_tol = 1e-8
#  nl_max_its = 20
#  #Terms for debugging
##  petsc_options = '-ksp_monitor_true_residual -ksp_compute_singularvalues' 
##  petsc_options = '-snes_converged_reason -ksp_converged_reason'
##  l_max_its  = 10
##  petsc_options_iname = '-pc_type -pc_hypre_type -ksp_gmres_restart'
##  petsc_options_value = 'hypre    boomeramg      100'
##  petsc_options_iname = '-ksp_gmres_restart'
##  petsc_options_value = '100'
##  petsc_options = '-snes_ksp_ew -ksp_monitor_true_residual -ksp_compute_singularvalues'# -pc_svd_monitor'
##  petsc_options = '-ksp_monitor_true_residual -ksp_compute_singularvalues'# -pc_svd_monitor'
##  petsc_options_iname = '-pc_type -sub_pc_type -pc_asm_overlap -ksp_gmres_restart -print_linear_residuals'# -ksp_view_mat'
##  petsc_options_value = 'asm      lu           1               101                false                  '# binary'
#[]
#
#[Outputs]
#  exodus = true
##  file_base = out
#  perf_graph = true
##  [./exodus]
##    type = Exodus
##    sequence = true
##  [../]
#[]
