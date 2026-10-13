.class Le/m/b/r$f;
.super Ljava/lang/Object;
.source "MapboxMapController.java"

# interfaces
.implements Le/m/a/a/d/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/m/b/r;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/m/a/a/d/d<",
        "Le/m/a/a/d/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Le/m/b/r;


# direct methods
.method constructor <init>(Le/m/b/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/b/r$f;->a:Le/m/b/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/m/a/a/d/i;)V
    .locals 1

    .line 2
    iget-object v0, p0, Le/m/b/r$f;->a:Le/m/b/r;

    invoke-virtual {p1}, Le/m/a/a/d/i;->a()Landroid/location/Location;

    move-result-object p1

    invoke-static {v0, p1}, Le/m/b/r;->a(Le/m/b/r;Landroid/location/Location;)V

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 0
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Le/m/a/a/d/i;

    invoke-virtual {p0, p1}, Le/m/b/r$f;->a(Le/m/a/a/d/i;)V

    return-void
.end method
