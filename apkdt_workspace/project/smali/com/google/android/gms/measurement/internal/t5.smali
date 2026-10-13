.class final Lcom/google/android/gms/measurement/internal/t5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic e:J

.field private final synthetic f:Lcom/google/android/gms/measurement/internal/p5;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/p5;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/t5;->f:Lcom/google/android/gms/measurement/internal/p5;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/t5;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/t5;->f:Lcom/google/android/gms/measurement/internal/p5;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/t5;->e:J

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->g()V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->e()V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/z4;->u()V

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/f3;->x()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v3

    const-string v4, "Resetting analytics data (FE)"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/v7;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/v7;->y()V

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->d()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->n()Lcom/google/android/gms/measurement/internal/y2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/y2;->z()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/z8;->j(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->c()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/o3;->j:Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/measurement/internal/t3;->a(J)V

    .line 9
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/f5;->a:Lcom/google/android/gms/measurement/internal/j4;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->c()Z

    move-result v1

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->d()Lcom/google/android/gms/measurement/internal/z8;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/z8;->m()Z

    move-result v2

    if-nez v2, :cond_1

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->c()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v2

    xor-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/o3;->d(Z)V

    .line 12
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/u6;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/u6;->A()V

    xor-int/lit8 v1, v1, 0x1

    .line 13
    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/p5;->h:Z

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/t5;->f:Lcom/google/android/gms/measurement/internal/p5;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/u6;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/u6;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method
