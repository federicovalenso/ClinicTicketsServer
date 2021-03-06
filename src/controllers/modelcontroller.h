#ifndef MODELCONTROLLER_H
#define MODELCONTROLLER_H

#include "httprequesthandler.h"
#include "httpsessionstore.h"

class ModelController {
 public:
  ModelController() = default;
  virtual ~ModelController() = default;
  virtual void store(stefanfrings::HttpRequest&, stefanfrings::HttpResponse&);
  virtual void index(stefanfrings::HttpRequest&,
                     stefanfrings::HttpResponse&) const;
  virtual void create(stefanfrings::HttpRequest&, stefanfrings::HttpResponse&);
  virtual void destroy(stefanfrings::HttpRequest&, stefanfrings::HttpResponse&);
  virtual void update(stefanfrings::HttpRequest&, stefanfrings::HttpResponse&);
  virtual void show(stefanfrings::HttpRequest&,
                    stefanfrings::HttpResponse&) const;
  virtual void edit(stefanfrings::HttpRequest&, stefanfrings::HttpResponse&);

 protected:
  static void setClientError(stefanfrings::HttpResponse&) noexcept;
  static void setServerError(stefanfrings::HttpResponse&) noexcept;
  static void setUnauthorizedError(stefanfrings::HttpResponse&) noexcept;
};

#endif  // MODELCONTROLLER_H
