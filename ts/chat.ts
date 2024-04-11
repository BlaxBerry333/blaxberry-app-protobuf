/* eslint-disable */

export const protobufPackage = "notes";

/** ChatBot's data */
export interface ChatBotData {
  id: number;
  scenarioID: number;
  isDraft: boolean;
  description: string;
  variables: number[];
}
