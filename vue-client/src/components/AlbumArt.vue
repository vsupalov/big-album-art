<template>
<div class="container">
  <div class="image">
    <img v-bind:src="img_src">
  </div>
  <div class="meta">
    <a>{{track_name}} by {{ artist_names_string }}({{album_name}})</a>
  </div>
</div>
</template>

<script>
/*
export default {
  data () {
    return {
      loading: false,
      post: null,
      error: null
    }
  },
  created () {
    // fetch the data when the view is created and the data is
    // already being observed
    this.fetchData()
  },
  methods: {
    fetchData () {
      this.error = this.post = null
      this.loading = true
      // replace `getPost` with your data fetching util / API wrapper
      getPost(this.$route.params.id, (err, post) => {
        this.loading = false
        if (err) {
          this.error = err.toString()
        } else {
          this.post = post
        }
      })
    }
  }
}
*/
</script>

<style scoped>
  body {
    background: black;
    text-align: center;
    overflow: hidden;
  }
  .container {
    margin-top: 1%;
    display: flex;
    flex-direction: column;
    align-content: center;
  }
  .image img {
    height: 91%;
    flex-grow: 1;
    flex-shrink: 1;
  }
  .meta {
    margin-top: 1%;
    color: #444;
    flex-grow: 0;
    flex-shrink: 1;
  }
  .meta a {
    font-size: 1em;
  }
</style>
