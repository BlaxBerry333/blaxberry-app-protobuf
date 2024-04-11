/* eslint-disable */

export const protobufPackage = "scenario";

export enum NodeTypes {
  START = 0,
  MESSAGE = 1,
  FORM = 2,
  CONDITION = 3,
  VARIABLE = 4,
  HTML = 5,
  UNRECOGNIZED = -1,
}

/** Message Node */
export interface MessageNode {
  id: number;
  nodeType: NodeTypes;
  formData: MessageNodeFormData | undefined;
}

/** Message Node's form data */
export interface MessageNodeFormData {
  isInvalid: boolean;
  title: string;
  text: string;
}

/** Form Node */
export interface FormNode {
  id: number;
  nodeType: NodeTypes;
  formData: FormNodeFormData | undefined;
}

/** Form Node's form data */
export interface FormNodeFormData {
  isInvalid: boolean;
  title: string;
}

/** Variable Node */
export interface VariableNode {
  id: number;
  nodeType: NodeTypes;
  formData: VariableNodeFormData | undefined;
}

/** Variable Node's form data */
export interface VariableNodeFormData {
  isInvalid: boolean;
  title: string;
  variableID: string;
}

/** Condition Node */
export interface ConditionNode {
  id: number;
  nodeType: NodeTypes;
  formData: ConditionNodeFormData | undefined;
}

/** Condition Node's form data */
export interface ConditionNodeFormData {
  isInvalid: boolean;
  title: string;
}

/** HTML Node */
export interface HTMLNode {
  id: number;
  nodeType: NodeTypes;
  formData: HTMLNodeFormData | undefined;
}

/** HTML Node's form data */
export interface HTMLNodeFormData {
  isInvalid: boolean;
  title: string;
  htmlString: string;
}
