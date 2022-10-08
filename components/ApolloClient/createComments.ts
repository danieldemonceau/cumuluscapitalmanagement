import "@apollo/client";

export const CREATE_COMMENTS = (
  emailAddress: string,
  message: string,
  name: string
) => `
  mutation CreateComment {
    createComment(
      input: {comment: {email: "${emailAddress}", message: "${message}", name: "${name}"}}
    ) {
      comment {
        id
      }
    }
  }
`;
