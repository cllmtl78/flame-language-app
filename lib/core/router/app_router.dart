import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../features/chats/presentation/chats_page.dart';
import '../../features/practice_board/presentation/practice_board_page.dart';
import '../../features/quick_match/presentation/quick_match_page.dart';
import '../../shell/main_shell_page.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/board',
    // Faz 1'de burada auth redirect (guard) eklenecek.
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, shell) => MainShellPage(shell: shell),
        branches: [
          StatefulShellBranch(routes: [
            GoRoute(
              path: '/board',
              builder: (_, __) => const PracticeBoardPage(),
            ),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(
              path: '/match',
              builder: (_, __) => const QuickMatchPage(),
            ),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(
              path: '/chats',
              builder: (_, __) => const ChatsPage(),
            ),
          ]),
        ],
      ),
    ],
  );
});
