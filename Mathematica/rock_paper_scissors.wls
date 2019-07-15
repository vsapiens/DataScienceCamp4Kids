Grid[{
 {Style[Text["Your Play!"], 23], SpanFromLeft, SpanFromLeft},
 {Button[rock,
   human = rock;
   robot = RandomChoice[{rock, paper, scissors}];
   results =
    Which[
     robot == rock, "Tie",
     robot == paper, robotScore += 1; "Lose",
     robot == scissors, humanScore += 1; "Win"], Appearance -> None
   ],
  Button[paper,
   human = paper;
   robot = RandomChoice[{rock, paper, scissors}];
   results =
    Which[
     robot == paper, "Tie",
      robot == scissors, robotScore += 1; "Lose",
      robot == rock, humanScore += 1; "Win"], Appearance -> None
   ],
  Button[scissors,
   human = scissors;
   robot = RandomChoice[{rock, paper, scissors}];
   results =
    Which[
     robot == scissors, "Tie",
     robot == rock, robotScore += 1; "Lose",
     robot == paper, humanScore += 1; "Win"], Appearance -> None
   ]},
 {Dynamic[human], Dynamic[Style[Text[results], 20]], Dynamic[robot]}
 }, Frame -> True, FrameStyle -> Thick, Spacings -> {2, 1.5}]