import 'package:flutter_test/flutter_test.dart';
import 'package:mi_card/section11/story_brain.dart';

void main() {
  group('storybrain', () {
    final storyBrain = StoryBrain();

    String storyTitle = storyBrain.getStoryTitleFromStoryNum();
    String choice1 = storyBrain.getChoice1FromStoryNum();
    String choice2 = storyBrain.getChoice2FromStoryNum();

    test('정상적으로 스토리 제목을 가져오는지', () {
      expect(storyTitle,
          'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".');
    });

    test('정상적으로 choice1 값을 가져오는지', () {
      expect(choice1, 'I\'ll hop in. Thanks for the help!');
    });

    test('정상적으로 choice2 값을 가져오는지', () {
      expect(choice2, 'Better ask him if he\'s a murderer first.');
    });
  });
}
