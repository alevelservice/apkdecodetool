.class final Lcom/google/android/gms/measurement/internal/f6;
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
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/f6;->f:Lcom/google/android/gms/measurement/internal/p5;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/f6;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/f6;->f:Lcom/google/android/gms/measurement/internal/p5;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->c()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/o3;->q:Lcom/google/android/gms/measurement/internal/t3;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/f6;->e:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/t3;->a(J)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/f6;->f:Lcom/google/android/gms/measurement/internal/p5;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f3;->x()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/f6;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Session timeout duration set"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
