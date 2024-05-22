import 'package:fpdart/fpdart.dart';

///
abstract class Entity<
    EntityT extends Entity<EntityT, MutationT, CommandT, CommandErrorT, StateT,
        QueryT, ViewT, ViewStateT, EventT, KindT>,
    MutationT extends Mutation<CommandT, CommandErrorT, KindT>,
    CommandT extends Command<CommandT, KindT>,
    CommandErrorT extends CommandError<CommandErrorT, KindT>,
    StateT extends State<StateT, KindT>,
    QueryT extends Query<QueryT, ViewT, KindT>,
    ViewT extends View<ViewT, KindT>,
    ViewStateT extends ViewState<ViewStateT, KindT>,
    EventT extends Event<EventT, KindT>,
    KindT extends Kind<KindT>> {}

///
abstract class Mutation<
    CommandT extends Command<CommandT, KindT>,
    CommandErrorT extends CommandError<CommandErrorT, KindT>,
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
abstract class Query<QueryT extends Query<QueryT, ViewT, KindT>,
    ViewT extends View<ViewT, KindT>, KindT extends Kind<KindT>> {}

///
abstract class ViewState<ViewStateT extends ViewState<ViewStateT, KindT>,
    KindT extends Kind<KindT>> {}

///
abstract class Event<EventT extends Event<EventT, KindT>,
    KindT extends Kind<KindT>> {}

///
abstract class Kind<KindT extends Kind<KindT>> {}

// Base
///
sealed class Aggregate1Kind<KindT extends Aggregate1Kind<KindT>> {}

///
sealed class Aggregate1Event<EventT extends Aggregate1Event<EventT, KindT>,
    KindT extends Aggregate1Kind<KindT>> {}

///
sealed class Aggregate1CommandError<
    CommandErrorT extends Aggregate1CommandError<CommandErrorT, KindT>,
    KindT extends Aggregate1Kind<KindT>> {}

// ///
// sealed class Aggregate1Mutation<
//     CommandT extends Aggregate1Command<CommandT, KindT>,
//     CommandErrorT extends Aggregate1CommandError<CommandErrorT, KindT>,
//     KindT extends Aggregate1Kind<KindT>> {}

///
sealed class Aggregate1Command<
    CommandT extends Aggregate1Command<CommandT, CommandErrorT, KindT>,
    CommandErrorT extends Aggregate1CommandError<CommandErrorT, KindT>,
    KindT extends Aggregate1Kind<KindT>> {}

///
final class Entity1Kind extends Aggregate1Kind<Entity1Kind> {}

///
sealed class Entity1CommandError<
        CommandErrorT extends Entity1CommandError<CommandErrorT>>
    extends Aggregate1CommandError<CommandErrorT, Entity1Kind> {}

///
final class Entity1Command1Error
    extends Entity1CommandError<Entity1Command1Error> {}

///
sealed class Entity1Command<
        CommandT extends Entity1Command<CommandT, CommandErrorT>,
        CommandErrorT extends Entity1CommandError<CommandErrorT>>
    extends Aggregate1Command<CommandT, CommandErrorT, Entity1Kind> {
  Entity1Command({required this.command});

  final CommandT command;
}

///
final class Entity1Command1
    extends Entity1Command<Entity1Command1, Entity1Command1Error> {
  Entity1Command1({required super.command});
}

///
sealed class Entity1Mutation<
    CommandT extends Entity1Command<CommandT, CommandErrorT>,
    CommandErrorT extends Entity1CommandError<CommandErrorT>> {
  Entity1Mutation({required this.command});

  ///
  final CommandT command;
}

///
final class Entity1Mutation1
    extends Entity1Mutation<Entity1Command1, Entity1Command1Error> {
  ///
  Entity1Mutation1({
    required super.command,
  });
}

///
CommandErrorT a<CommandT extends Entity1Command<CommandT, CommandErrorT>,
        CommandErrorT extends Entity1CommandError<CommandErrorT>>(
    CommandT command) {
  switch (command) {
    // case Entity1CommandMutation < (
    // ):
    //   return Entity1Command1Error();
    case Entity1Command1(command: var c){

    }
  }
  throw UnimplementedError();
}
