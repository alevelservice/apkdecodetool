.class final Le/m/a/a/d/b$b;
.super Lcom/google/android/gms/location/d;
.source "GoogleLocationEngineImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/a/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
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
    invoke-direct {p0}, Lcom/google/android/gms/location/d;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/a/d/b$b;->a:Le/m/a/a/d/d;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/location/LocationResult;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/location/d;->a(Lcom/google/android/gms/location/LocationResult;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationResult;->k()Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Le/m/a/a/d/b$b;->a:Le/m/a/a/d/d;

    invoke-static {p1}, Le/m/a/a/d/i;->a(Ljava/util/List;)Le/m/a/a/d/i;

    move-result-object p1

    invoke-interface {v0, p1}, Le/m/a/a/d/d;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Le/m/a/a/d/b$b;->a:Le/m/a/a/d/d;

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Unavailable location"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Le/m/a/a/d/d;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
