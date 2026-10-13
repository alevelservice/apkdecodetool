.class public final Lcom/google/android/gms/common/api/internal/e1;
.super Lcom/google/android/gms/common/api/internal/c1;
.source "com.google.android.gms:play-services-base@@17.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/c1<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/google/android/gms/common/api/internal/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/n<",
            "Lcom/google/android/gms/common/api/a$b;",
            "*>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/common/api/internal/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/u<",
            "Lcom/google/android/gms/common/api/a$b;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/q0;Le/i/b/b/d/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/q0;",
            "Le/i/b/b/d/i<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/common/api/internal/c1;-><init>(ILe/i/b/b/d/i;)V

    .line 2
    iget-object p2, p1, Lcom/google/android/gms/common/api/internal/q0;->a:Lcom/google/android/gms/common/api/internal/n;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/e1;->b:Lcom/google/android/gms/common/api/internal/n;

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/q0;->b:Lcom/google/android/gms/common/api/internal/u;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/e1;->c:Lcom/google/android/gms/common/api/internal/u;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/android/gms/common/api/internal/n1;Z)V
    .locals 0
    .param p1    # Lcom/google/android/gms/common/api/internal/n1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public final b(Lcom/google/android/gms/common/api/internal/g$a;)[Lcom/google/android/gms/common/Feature;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/g$a<",
            "*>;)[",
            "Lcom/google/android/gms/common/Feature;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/e1;->b:Lcom/google/android/gms/common/api/internal/n;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/n;->c()[Lcom/google/android/gms/common/Feature;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/google/android/gms/common/api/internal/g$a;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/g$a<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/e1;->b:Lcom/google/android/gms/common/api/internal/n;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/n;->d()Z

    move-result p1

    return p1
.end method

.method public final d(Lcom/google/android/gms/common/api/internal/g$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/g$a<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/e1;->b:Lcom/google/android/gms/common/api/internal/n;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/g$a;->f()Lcom/google/android/gms/common/api/a$f;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/c1;->a:Le/i/b/b/d/i;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/internal/n;->a(Lcom/google/android/gms/common/api/a$b;Le/i/b/b/d/i;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/e1;->b:Lcom/google/android/gms/common/api/internal/n;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/n;->b()Lcom/google/android/gms/common/api/internal/k$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/g$a;->i()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/e1;->b:Lcom/google/android/gms/common/api/internal/n;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/n;->b()Lcom/google/android/gms/common/api/internal/k$a;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/internal/q0;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/e1;->b:Lcom/google/android/gms/common/api/internal/n;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/e1;->c:Lcom/google/android/gms/common/api/internal/u;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/api/internal/q0;-><init>(Lcom/google/android/gms/common/api/internal/n;Lcom/google/android/gms/common/api/internal/u;)V

    .line 5
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
