.class final Lcom/google/android/gms/measurement/internal/e7;
.super Lcom/google/android/gms/measurement/internal/b;


# instance fields
.field private final synthetic e:Lcom/google/android/gms/measurement/internal/u6;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/u6;Lcom/google/android/gms/measurement/internal/h5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/e7;->e:Lcom/google/android/gms/measurement/internal/u6;

    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/b;-><init>(Lcom/google/android/gms/measurement/internal/h5;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e7;->e:Lcom/google/android/gms/measurement/internal/u6;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/u6;->zzab()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f3;->t()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    const-string v1, "Tasks have been queued for a long time"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    return-void
.end method
