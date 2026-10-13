.class final Lcom/google/android/gms/measurement/internal/a6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic e:Ljava/util/concurrent/atomic/AtomicReference;

.field private final synthetic f:Ljava/lang/String;

.field private final synthetic g:Ljava/lang/String;

.field private final synthetic h:Ljava/lang/String;

.field private final synthetic i:Z

.field private final synthetic j:Lcom/google/android/gms/measurement/internal/p5;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/p5;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/a6;->j:Lcom/google/android/gms/measurement/internal/p5;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/a6;->e:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/a6;->f:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/a6;->g:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/a6;->h:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/measurement/internal/a6;->i:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a6;->j:Lcom/google/android/gms/measurement/internal/p5;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/f5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/u6;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/a6;->e:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/a6;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/a6;->g:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/a6;->h:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/google/android/gms/measurement/internal/a6;->i:Z

    .line 3
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/u6;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
