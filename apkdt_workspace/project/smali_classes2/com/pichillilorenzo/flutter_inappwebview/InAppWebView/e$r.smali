.class Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e$r;
.super Ljava/lang/Object;
.source "InAppWebViewChromeClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Landroid/widget/EditText;

.field final synthetic f:Landroid/webkit/JsPromptResult;

.field final synthetic g:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;Landroid/widget/EditText;Landroid/webkit/JsPromptResult;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e$r;->e:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e$r;->f:Landroid/webkit/JsPromptResult;

    iput-object p4, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e$r;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e$r;->e:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e$r;->f:Landroid/webkit/JsPromptResult;

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e$r;->g:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object p2, v1

    :cond_0
    invoke-virtual {v0, p2}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
