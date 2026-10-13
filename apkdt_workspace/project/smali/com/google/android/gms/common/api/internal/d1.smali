.class public final Lcom/google/android/gms/common/api/internal/d1;
.super Lcom/google/android/gms/common/api/internal/c0;
.source "com.google.android.gms:play-services-base@@17.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/common/api/internal/c0;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/common/api/internal/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/s<",
            "Lcom/google/android/gms/common/api/a$b;",
            "TResultT;>;"
        }
    .end annotation
.end field

.field private final b:Le/i/b/b/d/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/i/b/b/d/i<",
            "TResultT;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/common/api/internal/q;


# direct methods
.method public constructor <init>(ILcom/google/android/gms/common/api/internal/s;Le/i/b/b/d/i;Lcom/google/android/gms/common/api/internal/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/common/api/internal/s<",
            "Lcom/google/android/gms/common/api/a$b;",
            "TResultT;>;",
            "Le/i/b/b/d/i<",
            "TResultT;>;",
            "Lcom/google/android/gms/common/api/internal/q;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/c0;-><init>(I)V

    .line 2
    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/d1;->b:Le/i/b/b/d/i;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/d1;->a:Lcom/google/android/gms/common/api/internal/s;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/common/api/internal/d1;->c:Lcom/google/android/gms/common/api/internal/q;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d1;->b:Le/i/b/b/d/i;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/d1;->c:Lcom/google/android/gms/common/api/internal/q;

    invoke-interface {v1, p1}, Lcom/google/android/gms/common/api/internal/q;->a(Lcom/google/android/gms/common/api/Status;)Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/i/b/b/d/i;->b(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/internal/g$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/g$a<",
            "*>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d1;->a:Lcom/google/android/gms/common/api/internal/s;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/g$a;->f()Lcom/google/android/gms/common/api/a$f;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/d1;->b:Le/i/b/b/d/i;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/common/api/internal/s;->a(Lcom/google/android/gms/common/api/a$b;Le/i/b/b/d/i;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/d1;->a(Ljava/lang/RuntimeException;)V

    return-void

    :catch_1
    move-exception p1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/r0;->b(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/d1;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :catch_2
    move-exception p1

    .line 4
    throw p1
.end method

.method public final a(Lcom/google/android/gms/common/api/internal/n1;Z)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/internal/n1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d1;->b:Le/i/b/b/d/i;

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/common/api/internal/n1;->a(Le/i/b/b/d/i;Z)V

    return-void
.end method

.method public final a(Ljava/lang/RuntimeException;)V
    .locals 1
    .param p1    # Ljava/lang/RuntimeException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d1;->b:Le/i/b/b/d/i;

    invoke-virtual {v0, p1}, Le/i/b/b/d/i;->b(Ljava/lang/Exception;)Z

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
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/d1;->a:Lcom/google/android/gms/common/api/internal/s;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/s;->b()[Lcom/google/android/gms/common/Feature;

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
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/d1;->a:Lcom/google/android/gms/common/api/internal/s;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/s;->a()Z

    move-result p1

    return p1
.end method
