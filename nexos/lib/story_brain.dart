
import 'story.dart';


class StoryBrain {


List<Story> _storyData = [
    Story(
        storyTitle:
            'La noche anterior, te sentías cansado/a así que te acostaste temprano para poder descansar suficiente y despertar temprano a terminar las tareas que tienes que entregar al día siguiente. Cuando te despiertas, te das cuenta que te levantaste tarde y no podrás terminar las tareas. Al ver tu teléfono, tu mejor amigo te escribió',
        choice1: 'Decides no ir y te quedas en casa sin avisar',
        choice2: 'Vas a clase y tratas de terminar las asignaciones'),
    Story(
        storyTitle: 'Cuando llegas a la escuela, te llaman del coro, hay un evento en la tarde, se les da un permiso para practicar todo el día. La primera voz no fue y tú eres su sustituto, por lo que, no entras al aula sino que vas directo al salón de actos. A las 11:30AM, cuando te toca entregar la tarea, el profesor te pide la tarea con carácter de urgencia pues el maestro  ha dicho que esa tarea tenía un valor del 50% del curso. ¿Qué haces? ',
        choice1: 'Sales del curso, te escapas del colegio.',
        choice2: 'Le dices que dejaste la tarea en casa'),
    Story(
        storyTitle:
            'Sientes que no tienes muchos deseos de hacer la tarea en estos momentos. Como aún es temprano, decides ir a un centro de juegosy ver la película de Aquaman, que se estrenó hace un tiempo pero no habías tenido tiempo. Antes de terminar, ves unas llamadas perdidas de tu madre y tratas de comunicarte con ella. Cuando te responde, la escuchas agitada y te pregunta que donde estas.',
        choice1: 'Le dices que estás en la casa terminando una tarea',
        choice2: 'Le dices que estas en la escuela y debes colgar.'),
    Story(
        storyTitle:
            'El Profesor no te cree piensa que estas mientiendo, pero como eres un buen estudiante te dice que lo entregues mañana.',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
            'Cuando tu madre llega a casa te dice que la escuela la llamo, no volvera a confiar en ti jamas y que de ahora en adelante ella te llevara a la escuela y no habra mas privacidad.',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
            'Tu madre te dice que la llamaron de la escuela y estaba preocupada. Sin embargo, te dice que, estarás castigado por el resto de la semana y que, irá contigo en la tarde a la escuela para disculparte con tus maestros y decir la verdad.',
        choice1: 'Restart',
        choice2: '')
  ];

  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  
  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }


  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }


  int _storyNumber = 0;

  void nextStory(int choiceNumber) {

    if (this._storyNumber == 0) {
      if (choiceNumber == 1) {
        this._storyNumber = 2;
      } else {
        this._storyNumber = 1;
      }
    } else if (_storyNumber == 1) {
      if (choiceNumber == 1) {
        this._storyNumber = 2;
      } else {
        this._storyNumber = 3;
      }
    } else if (_storyNumber == 2) {
      if (choiceNumber == 1) {
        this._storyNumber = 5;
      } else {
        this._storyNumber = 4;
      }
    } else {
      restart();
    }
  }

  void restart() {
    _storyNumber = 0;
  }


  bool buttonShouldBeVisible() {
    if (_storyNumber <=2) {
      return true;
    } else
      return false;
  }
}
