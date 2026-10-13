.class public Lcom/pichillilorenzo/flutter_inappwebview/b/b;
.super Ljava/lang/Object;
.source "ContentBlockerAction.java"


# instance fields
.field a:Lcom/pichillilorenzo/flutter_inappwebview/b/c;

.field b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview/b/c;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/b/b;->a:Lcom/pichillilorenzo/flutter_inappwebview/b/c;

    .line 3
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/b/b;->a:Lcom/pichillilorenzo/flutter_inappwebview/b/c;

    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/b/c;->CSS_DISPLAY_NONE:Lcom/pichillilorenzo/flutter_inappwebview/b/c;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 4
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/b/b;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview/b/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/pichillilorenzo/flutter_inappwebview/b/b;"
        }
    .end annotation

    const-string v0, "type"

    .line 1
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/pichillilorenzo/flutter_inappwebview/b/c;->fromValue(Ljava/lang/String;)Lcom/pichillilorenzo/flutter_inappwebview/b/c;

    move-result-object v0

    const-string v1, "selector"

    .line 2
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 3
    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview/b/b;

    invoke-direct {v1, v0, p0}, Lcom/pichillilorenzo/flutter_inappwebview/b/b;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/b/c;Ljava/lang/String;)V

    return-object v1
.end method
