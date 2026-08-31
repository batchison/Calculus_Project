var ptx_lunr_search_style = "textbook";
var ptx_lunr_docs = [
{
  "id": "colophon",
  "level": "1",
  "url": "colophon.html",
  "type": "Colophon",
  "number": "",
  "title": "Colophon",
  "body": "  "
},
{
  "id": "chapter_integration",
  "level": "1",
  "url": "chapter_integration.html",
  "type": "Chapter",
  "number": "1",
  "title": "Integration",
  "body": " Integration      Review Exercises    Evaluate the given indefinite integral.                     "
},
{
  "id": "ex-definite-integral-review-1",
  "level": "2",
  "url": "exercises-integration-review.html#ex-definite-integral-review-1",
  "type": "Exercise",
  "number": "1.1",
  "title": "",
  "body": "             "
},
{
  "id": "selected-answers",
  "level": "1",
  "url": "selected-answers.html",
  "type": "Appendix",
  "number": "A",
  "title": "Answers to Selected Exercises",
  "body": " Answers to Selected Exercises  "
}
]

var ptx_lunr_idx = lunr(function () {
  this.ref('id')
  this.field('title')
  this.field('body')
  this.metadataWhitelist = ['position']

  ptx_lunr_docs.forEach(function (doc) {
    this.add(doc)
  }, this)
})
