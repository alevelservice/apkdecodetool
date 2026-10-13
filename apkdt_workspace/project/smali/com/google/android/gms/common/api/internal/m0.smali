.class final Lcom/google/android/gms/common/api/internal/m0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic e:Lcom/google/android/gms/common/ConnectionResult;

.field private final synthetic f:Lcom/google/android/gms/common/api/internal/g$b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/g$b;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/m0;->f:Lcom/google/android/gms/common/api/internal/g$b;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/m0;->e:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/m0;->f:Lcom/google/android/gms/common/api/internal/g$b;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/g$b;->f:Lcom/google/android/gms/common/api/internal/g;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/g;->j(Lcom/google/android/gms/common/api/internal/g;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/m0;->f:Lcom/google/android/gms/common/api/internal/g$b;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/g$b;->a(Lcom/google/android/gms/common/api/internal/g$b;)Lcom/google/android/gms/common/api/internal/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/g$a;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/m0;->e:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->o()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/m0;->f:Lcom/google/android/gms/common/api/internal/g$b;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/android/gms/common/api/internal/g$b;->a(Lcom/google/android/gms/common/api/internal/g$b;Z)Z

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/m0;->f:Lcom/google/android/gms/common/api/internal/g$b;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/g$b;->b(Lcom/google/android/gms/common/api/internal/g$b;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$f;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/m0;->f:Lcom/google/android/gms/common/api/internal/g$b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/g$b;->c(Lcom/google/android/gms/common/api/internal/g$b;)V

    return-void

    .line 6
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/m0;->f:Lcom/google/android/gms/common/api/internal/g$b;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/g$b;->b(Lcom/google/android/gms/common/api/internal/g$b;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/m0;->f:Lcom/google/android/gms/common/api/internal/g$b;

    .line 7
    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/g$b;->b(Lcom/google/android/gms/common/api/internal/g$b;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/api/a$f;->c()Ljava/util/Set;

    move-result-object v3

    .line 8
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/common/api/a$f;->a(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 9
    :catch_0
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/g$a;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/m0;->e:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/g$a;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
