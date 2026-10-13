.class final Lcom/google/android/gms/measurement/internal/x7;
.super Lcom/google/android/gms/measurement/internal/b;


# instance fields
.field private final synthetic e:Lcom/google/android/gms/measurement/internal/v7;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/v7;Lcom/google/android/gms/measurement/internal/h5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/x7;->e:Lcom/google/android/gms/measurement/internal/v7;

    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/b;-><init>(Lcom/google/android/gms/measurement/internal/h5;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/x7;->e:Lcom/google/android/gms/measurement/internal/v7;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/v7;->a(Lcom/google/android/gms/measurement/internal/v7;)V

    return-void
.end method
