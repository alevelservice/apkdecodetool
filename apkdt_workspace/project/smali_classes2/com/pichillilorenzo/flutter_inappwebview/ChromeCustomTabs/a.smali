.class public Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/a;
.super Ljava/lang/Object;
.source "ChromeCustomTabsOptions.java"

# interfaces
.implements Lcom/pichillilorenzo/flutter_inappwebview/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pichillilorenzo/flutter_inappwebview/l<",
        "Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ChromeCustomTabsActivity;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Ljava/lang/Boolean;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Boolean;

.field public e:Ljava/lang/Boolean;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/a;->a:Ljava/lang/Boolean;

    .line 3
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/a;->b:Ljava/lang/Boolean;

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/a;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/a;->d:Ljava/lang/Boolean;

    .line 6
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/a;->e:Ljava/lang/Boolean;

    .line 7
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/a;->g:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/a;"
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
    const-string v3, "keepAliveEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_1
    const-string v3, "packageName"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_2
    const-string v3, "instantAppsEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_3
    const-string v3, "enableUrlBarHiding"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_4
    const-string v3, "toolbarBackgroundColor"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_5
    const-string v3, "showTitle"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_6
    const-string v3, "addDefaultShareMenuItem"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :cond_1
    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 5
    :pswitch_0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/a;->g:Ljava/lang/Boolean;

    goto :goto_0

    .line 6
    :pswitch_1
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/a;->f:Ljava/lang/String;

    goto :goto_0

    .line 7
    :pswitch_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/a;->e:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 8
    :pswitch_3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/a;->d:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 9
    :pswitch_4
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/a;->c:Ljava/lang/String;

    goto/16 :goto_0

    .line 10
    :pswitch_5
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/a;->b:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 11
    :pswitch_6
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/a;->a:Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_2
    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7df0006f -> :sswitch_6
        -0x721252a5 -> :sswitch_5
        -0xd92a226 -> :sswitch_4
        0x831d3e6 -> :sswitch_3
        0x1c2dcfce -> :sswitch_2
        0x362a8ff1 -> :sswitch_1
        0x7ebbd9d9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
