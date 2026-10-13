.class final Lcom/google/android/gms/measurement/internal/p3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic e:Z

.field private final synthetic f:Lcom/google/android/gms/measurement/internal/m3;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/m3;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/p3;->f:Lcom/google/android/gms/measurement/internal/m3;

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/p3;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/p3;->f:Lcom/google/android/gms/measurement/internal/m3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/m3;->a(Lcom/google/android/gms/measurement/internal/m3;)Lcom/google/android/gms/measurement/internal/g8;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/p3;->e:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/g8;->a(Z)V

    return-void
.end method
