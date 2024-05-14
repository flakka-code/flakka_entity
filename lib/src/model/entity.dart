///
abstract class Entity<
    EntityT extends Entity<EntityT, CommandT, CommandErrorT, StateT, QueryT,
        ViewT, ViewStateT, EventT, KindT>,
    CommandT extends Command<CommandT, KindT>,
    CommandErrorT extends CommandError<CommandErrorT, KindT>,
    StateT extends State<StateT, KindT>,
    QueryT extends Query<QueryT, KindT>,
    ViewT extends View<ViewT, KindT>,
    ViewStateT extends ViewState<ViewStateT, KindT>,
    EventT extends Event<EventT, KindT>,
    KindT extends Kind<KindT>> {}

///
abstract class Command<CommandT extends Command<CommandT, KindT>,
    KindT extends Kind<KindT>> {}

///
abstract class CommandError<
    CommandErrorT extends CommandError<CommandErrorT, KindT>,
    KindT extends Kind<KindT>> {}

///
abstract class State<StateT extends State<StateT, KindT>,
    KindT extends Kind<KindT>> {}

///
abstract class View<ViewT extends View<ViewT, KindT>,
    KindT extends Kind<KindT>> {}

///
abstract class Query<QueryT extends Query<QueryT, KindT>,
    KindT extends Kind<KindT>> {}

///
abstract class ViewState<ViewStateT extends ViewState<ViewStateT, KindT>,
    KindT extends Kind<KindT>> {}

///
abstract class Event<EventT extends Event<EventT, KindT>,
    KindT extends Kind<KindT>> {}

///
abstract class Kind<KindT extends Kind<KindT>> {}
