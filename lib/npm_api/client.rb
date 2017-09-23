module NpmDownloadApi
  class Client

    def self.get(path)
      base_url = "https://api.npmjs.org/"
      url = base_url + path
      res = RestClient.get(url)
      JSON.parse(res.body)
    end

  end
end
