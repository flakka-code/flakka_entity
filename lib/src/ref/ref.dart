import 'package:fpdart/fpdart.dart';

///
abstract class EntityRef<CommandT, QueryT, PropsT> {
  ///
  Exit<CommandErrorT, void> tell<CommandErrorT>(
    PropsT props,
    DispatchCommand<CommandT, CommandErrorT> command,
  );

  ///
  ProjectionView<ViewT> ask<ViewT>(
    PropsT props,
    ProjectionQuery<QueryT, ViewT> query,
  );
}

///
sealed class EntityAction<CommandT, CommandErrorT, QueryT, ViewT> {}

///
final class DispatchCommand<CommandT, CommandErrorT>
    extends EntityAction<CommandT, CommandErrorT, dynamic, dynamic> {}

///
final class ProjectionQuery<QueryT, ViewT>
    extends EntityAction<dynamic, dynamic, QueryT, ViewT> {}

///
class ProjectionView<ViewT> {}
