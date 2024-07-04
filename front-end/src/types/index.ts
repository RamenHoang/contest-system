export interface IContest {
  id: string;
  title: string;
  author: string;
  imageUrl: string;
  startDate: string;
  endDate: string;
  status?: string;
  count?: number | 0;
  tnCount?: number;
  tlCount?: number;
}
export interface IUser {
  id: string;
  email: string;
  username: string;
  accessToken: string;
}

export interface IExam {
  id?: number;
  idUser?: number;
  title: string;
  totalMCQuestion: number;
  totalEssayQuestion: number;
  questions: IQuestion[];
  createdAt?: string;
}

export interface IQuestion {
  id?: number;
  title: string;
  lengthLimit?: number | null;
  type: 'MC' | 'Essay'; // Assuming "MC" for multiple choice, "Essay" for essay type questions
  answers?: IAnswer[]; // Optional since essay questions might not have predefined answers
}

export interface IAnswer {
  id?: number;
  answerText: string;
  isCorrect: boolean;
}
