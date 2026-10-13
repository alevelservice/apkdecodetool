.class Le/m/b/r$c;
.super Le/m/b/r$g;
.source "MapboxMapController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/m/b/r;->onMethodCall(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lg/a/c/a/k$d;


# direct methods
.method constructor <init>(Le/m/b/r;Lg/a/c/a/k$d;)V
    .locals 0

    .line 1
    iput-object p2, p0, Le/m/b/r$c;->a:Lg/a/c/a/k$d;

    invoke-direct {p0, p1}, Le/m/b/r$g;-><init>(Le/m/b/r;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-super {p0}, Le/m/b/r$g;->a()V

    .line 2
    iget-object v0, p0, Le/m/b/r$c;->a:Lg/a/c/a/k$d;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    invoke-super {p0}, Le/m/b/r$g;->b()V

    .line 2
    iget-object v0, p0, Le/m/b/r$c;->a:Lg/a/c/a/k$d;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    return-void
.end method
