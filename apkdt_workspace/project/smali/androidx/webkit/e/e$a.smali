.class Landroidx/webkit/e/e$a;
.super Ljava/lang/Object;
.source "WebViewGlueCommunicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/e/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Landroidx/webkit/e/l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/webkit/e/l;

    .line 2
    invoke-static {}, Landroidx/webkit/e/e;->d()Landroidx/webkit/e/g;

    move-result-object v1

    invoke-interface {v1}, Landroidx/webkit/e/g;->getWebkitToCompatConverter()Lorg/chromium/support_lib_boundary/WebkitToCompatConverterBoundaryInterface;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/webkit/e/l;-><init>(Lorg/chromium/support_lib_boundary/WebkitToCompatConverterBoundaryInterface;)V

    sput-object v0, Landroidx/webkit/e/e$a;->a:Landroidx/webkit/e/l;

    return-void
.end method
