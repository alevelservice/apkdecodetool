.class Lcom/example/native_webview/WebViewActivity$a;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/native_webview/WebViewActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/example/native_webview/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/example/native_webview/WebViewActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/example/native_webview/WebViewActivity$a;->e:Lcom/example/native_webview/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/example/native_webview/WebViewActivity$a;->e:Lcom/example/native_webview/WebViewActivity;

    invoke-virtual {p1}, Lcom/example/native_webview/WebViewActivity;->onBackPressed()V

    return-void
.end method
