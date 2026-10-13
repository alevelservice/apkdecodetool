.class final Lcom/google/android/gms/measurement/internal/r6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic e:Lcom/google/android/gms/measurement/internal/q6;

.field private final synthetic f:Lcom/google/android/gms/measurement/internal/p6;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/p6;Lcom/google/android/gms/measurement/internal/q6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/r6;->f:Lcom/google/android/gms/measurement/internal/p6;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/r6;->e:Lcom/google/android/gms/measurement/internal/q6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r6;->f:Lcom/google/android/gms/measurement/internal/p6;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/r6;->e:Lcom/google/android/gms/measurement/internal/q6;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/p6;->a(Lcom/google/android/gms/measurement/internal/p6;Lcom/google/android/gms/measurement/internal/q6;Z)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r6;->f:Lcom/google/android/gms/measurement/internal/p6;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/p6;->c:Lcom/google/android/gms/measurement/internal/q6;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p6;->o()Lcom/google/android/gms/measurement/internal/u6;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/u6;->a(Lcom/google/android/gms/measurement/internal/q6;)V

    return-void
.end method
