.class public Lcom/pichillilorenzo/flutter_inappwebview/c/e;
.super Ljava/lang/Object;
.source "ProtectionSpace.java"


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/c/e;->a:Ljava/lang/Long;

    .line 3
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/c/e;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview/c/e;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/pichillilorenzo/flutter_inappwebview/c/e;->d:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/pichillilorenzo/flutter_inappwebview/c/e;->e:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/c/e;->b:Ljava/lang/String;

    const-string v2, "host"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/c/e;->c:Ljava/lang/String;

    const-string v2, "protocol"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/c/e;->d:Ljava/lang/String;

    const-string v2, "realm"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/c/e;->e:Ljava/lang/Integer;

    const-string v2, "port"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
