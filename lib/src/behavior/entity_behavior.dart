
///
// final class ActionBehavior<Action,State,Error,>{}
abstract base class MutationBehavior<CommandT, ErrorT, StateT, ProductT, PropsT>
    extends ActorBehavior<CommandT, ErrorT, void, StateT, ProductT, PropsT> {
  // Effect<PropsT, ErrorT,>
}

///
class ProjectionBehavior<QueryT, ViewT, ViewStateT, ProductT, PropsT>
    extends ActorBehavior<QueryT, void, ViewT, ViewStateT, ProductT, PropsT> {}
