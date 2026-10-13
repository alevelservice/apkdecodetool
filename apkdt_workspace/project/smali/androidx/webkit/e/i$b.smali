.class Landroidx/webkit/e/i$b;
.super Ljava/lang/Object;
.source "WebViewRenderProcessClientAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/webkit/e/i;->onRendererResponsive(Landroid/webkit/WebView;Ljava/lang/reflect/InvocationHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Landroidx/webkit/d;

.field final synthetic f:Landroid/webkit/WebView;

.field final synthetic g:Landroidx/webkit/c;


# direct methods
.method constructor <init>(Landroidx/webkit/e/i;Landroidx/webkit/d;Landroid/webkit/WebView;Landroidx/webkit/c;)V
    .locals 0

    .line 1
    iput-object p2, p0, Landroidx/webkit/e/i$b;->e:Landroidx/webkit/d;

    iput-object p3, p0, Landroidx/webkit/e/i$b;->f:Landroid/webkit/WebView;

    iput-object p4, p0, Landroidx/webkit/e/i$b;->g:Landroidx/webkit/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/webkit/e/i$b;->e:Landroidx/webkit/d;

    iget-object v1, p0, Landroidx/webkit/e/i$b;->f:Landroid/webkit/WebView;

    iget-object v2, p0, Landroidx/webkit/e/i$b;->g:Landroidx/webkit/c;

    invoke-virtual {v0, v1, v2}, Landroidx/webkit/d;->a(Landroid/webkit/WebView;Landroidx/webkit/c;)V

    return-void
.end method
