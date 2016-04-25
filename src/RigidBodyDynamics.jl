# __precompile__() TODO: enable

module RigidBodyDynamics

import Base: convert, zero, one, *, +, /, -, call, inv, get, findfirst, Random.rand, Random.rand!, hcat, show, showcompact
using FixedSizeArrays
using Quaternions
using DataStructures

include("frames.jl")
include("spatial.jl")
include("rigid_body.jl")
include("joint.jl")
include("tree.jl")
include("mechanism.jl")
include("cache_element.jl")
include("mechanism_state_cache.jl")
include("mechanism_algorithms.jl")

export
    # types
    CartesianFrame3D,
    Transform3D,
    Point3D,
    FreeVector3D,
    SpatialInertia,
    RigidBody,
    Joint,
    QuaternionFloating,
    Revolute,
    Prismatic,
    Twist,
    GeometricJacobian,
    Wrench,
    Momentum,
    MomentumMatrix,
    SpatialAcceleration,
    Mechanism,
    MechanismState,
    MechanismStateCache,
    # functions
    transform,
    newton_euler,
    root_body,
    root_frame,
    bodies,
    path,
    joints,
    num_positions,
    num_velocities,
    joint_transform,
    motion_subspace,
    has_fixed_motion_subspace,
    bias_acceleration,
    spatial_inertia,
    crb_inertia,
    attach!,
    configuration_vector,
    velocity_vector,
    zero_configuration,
    rand_configuration,
    zero_configuration!,
    zero_velocity!,
    zero!,
    add_frame!,
    twist_wrt_world,
    relative_twist,
    transform_to_parent,
    transform_to_root,
    relative_transform,
    mass,
    center_of_mass,
    geometric_jacobian,
    mass_matrix,
    momentum_matrix,
    inverse_dynamics
end
