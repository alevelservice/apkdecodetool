.class final Lcom/google/android/gms/common/api/internal/v;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.1.0"

# interfaces
.implements Le/i/b/b/d/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/i/b/b/d/c<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field private final synthetic a:Le/i/b/b/d/i;

.field private final synthetic b:Lcom/google/android/gms/common/api/internal/n1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/n1;Le/i/b/b/d/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/v;->b:Lcom/google/android/gms/common/api/internal/n1;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/v;->a:Le/i/b/b/d/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Le/i/b/b/d/h;)V
    .locals 1
    .param p1    # Le/i/b/b/d/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/i/b/b/d/h<",
            "TTResult;>;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/v;->b:Lcom/google/android/gms/common/api/internal/n1;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/n1;->b(Lcom/google/android/gms/common/api/internal/n1;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/v;->a:Le/i/b/b/d/i;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
