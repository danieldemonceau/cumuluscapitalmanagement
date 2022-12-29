import PropTypes from "prop-types";

const YoutubeEmbed = ({ embedId }: { embedId: string }) => (
  <div className="iframe-container">
    <iframe
      // width="940"
      // height="473"
      // className="w-full aspect-video hover:aspect-square"
      className="responsive-iframe hover:aspect-square"
      src={`https://www.youtube.com/embed/${embedId}`}
      allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
      allowFullScreen
      title="Embedded youtube"
    />
  </div>
);

YoutubeEmbed.propTypes = {
  embedId: PropTypes.string.isRequired,
};

export default YoutubeEmbed;
