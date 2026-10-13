.class final Le/m/a/a/d/b$a;
.super Ljava/lang/Object;
.source "GoogleLocationEngineImpl.java"

# interfaces
.implements Le/i/b/b/d/e;
.implements Le/i/b/b/d/d;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/a/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/i/b/b/d/e<",
        "Landroid/location/Location;",
        ">;",
        "Le/i/b/b/d/d;"
    }
.end annotation


# instance fields
.field private final a:Le/m/a/a/d/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/a/d/d<",
            "Le/m/a/a/d/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Le/m/a/a/d/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/a/d/d<",
            "Le/m/a/a/d/i;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/a/d/b$a;->a:Le/m/a/a/d/d;

    return-void
.end method


# virtual methods
.method public a(Landroid/location/Location;)V
    .locals 1

    .line 2
    iget-object v0, p0, Le/m/a/a/d/b$a;->a:Le/m/a/a/d/d;

    if-eqz p1, :cond_0

    invoke-static {p1}, Le/m/a/a/d/i;->a(Landroid/location/Location;)Le/m/a/a/d/i;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Le/m/a/a/d/i;->a(Ljava/util/List;)Le/m/a/a/d/i;

    move-result-object p1

    .line 4
    :goto_0
    invoke-interface {v0, p1}, Le/m/a/a/d/d;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    iget-object v0, p0, Le/m/a/a/d/b$a;->a:Le/m/a/a/d/d;

    invoke-interface {v0, p1}, Le/m/a/a/d/d;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/location/Location;

    invoke-virtual {p0, p1}, Le/m/a/a/d/b$a;->a(Landroid/location/Location;)V

    return-void
.end method
