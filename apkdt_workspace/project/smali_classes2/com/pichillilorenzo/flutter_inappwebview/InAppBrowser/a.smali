.class public Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;
.super Ljava/lang/Object;
.source "InAppBrowserOptions.java"

# interfaces
.implements Lcom/pichillilorenzo/flutter_inappwebview/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pichillilorenzo/flutter_inappwebview/l<",
        "Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Ljava/lang/Boolean;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/Boolean;

.field public f:Ljava/lang/Boolean;

.field public g:Ljava/lang/Boolean;

.field public h:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->a:Ljava/lang/Boolean;

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->b:Ljava/lang/Boolean;

    const-string v2, ""

    .line 4
    iput-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->c:Ljava/lang/String;

    .line 5
    iput-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->d:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->e:Ljava/lang/Boolean;

    .line 7
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->f:Ljava/lang/Boolean;

    .line 8
    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->g:Ljava/lang/Boolean;

    .line 9
    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->h:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "toolbarTopBackgroundColor"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_1
    const-string v3, "progressBar"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x7

    goto :goto_1

    :sswitch_2
    const-string v3, "hideUrlBar"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_3
    const-string v3, "closeOnCannotGoBack"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_4
    const-string v3, "toolbarTop"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_5
    const-string v3, "toolbarTopFixedTitle"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_6
    const-string v3, "hidden"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_7
    const-string v3, "hideTitleBar"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x5

    :cond_1
    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 5
    :pswitch_0
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->h:Ljava/lang/Boolean;

    goto :goto_0

    .line 6
    :pswitch_1
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->g:Ljava/lang/Boolean;

    goto :goto_0

    .line 7
    :pswitch_2
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->f:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 8
    :pswitch_3
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->e:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 9
    :pswitch_4
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->d:Ljava/lang/String;

    goto/16 :goto_0

    .line 10
    :pswitch_5
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->c:Ljava/lang/String;

    goto/16 :goto_0

    .line 11
    :pswitch_6
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->b:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 12
    :pswitch_7
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->a:Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_2
    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x4df37e03 -> :sswitch_7
        -0x48916256 -> :sswitch_6
        -0x7101142 -> :sswitch_5
        0x37dc7da -> :sswitch_4
        0x5616c69 -> :sswitch_3
        0x1836e406 -> :sswitch_2
        0x437176a6 -> :sswitch_1
        0x7ddcf79b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

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

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->a:Ljava/lang/Boolean;

    const-string v2, "hidden"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->b:Ljava/lang/Boolean;

    const-string v2, "toolbarTop"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->c:Ljava/lang/String;

    const-string v2, "toolbarTopBackgroundColor"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->d:Ljava/lang/String;

    const-string v2, "toolbarTopFixedTitle"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->e:Ljava/lang/Boolean;

    const-string v2, "hideUrlBar"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->f:Ljava/lang/Boolean;

    const-string v2, "hideTitleBar"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->g:Ljava/lang/Boolean;

    const-string v2, "closeOnCannotGoBack"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->h:Ljava/lang/Boolean;

    const-string v2, "progressBar"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public a(Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 22
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/a;->a()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
