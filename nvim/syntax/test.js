async asyncData({query, $axios}) {
  let params = Object.assign({}, query)

  let organization = {}
  await $axios.$get(`${process.env.api}/organizations.getById`, {
    params
  }).then(({code, data}) => {
    organization = data
  });

  return { organization }
}

function asyncData(hello, greeting) {

}
