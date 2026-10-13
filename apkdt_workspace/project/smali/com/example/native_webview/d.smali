.class public Lcom/example/native_webview/d;
.super Ljava/lang/Object;
.source "NativeWebviewOptions.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private appVersion:Ljava/lang/String;

.field private errorMessage:Ljava/lang/String;

.field private fullURL:Ljava/lang/String;

.field private rootURL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private showInFullScreen:Ljava/lang/Boolean;

.field private title:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/example/native_webview/d;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/example/native_webview/d;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getFullURL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/example/native_webview/d;->fullURL:Ljava/lang/String;

    return-object v0
.end method

.method public getRootURL()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/example/native_webview/d;->rootURL:Ljava/util/List;

    return-object v0
.end method

.method public getShowInFullScreen()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/example/native_webview/d;->showInFullScreen:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/example/native_webview/d;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/example/native_webview/d;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/example/native_webview/d;->appVersion:Ljava/lang/String;

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/example/native_webview/d;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public setFullURL(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/example/native_webview/d;->fullURL:Ljava/lang/String;

    return-void
.end method

.method public setRootURL(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/example/native_webview/d;->rootURL:Ljava/util/List;

    return-void
.end method

.method public setShowInFullScreen(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/example/native_webview/d;->showInFullScreen:Ljava/lang/Boolean;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/example/native_webview/d;->title:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/example/native_webview/d;->token:Ljava/lang/String;

    return-void
.end method
