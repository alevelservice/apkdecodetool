.class final Lcom/google/android/gms/internal/measurement/r;
.super Lcom/google/android/gms/internal/measurement/zzz$a;


# instance fields
.field private final synthetic i:Landroid/app/Activity;

.field private final synthetic j:Lcom/google/android/gms/internal/measurement/zzz$b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzz$b;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/r;->j:Lcom/google/android/gms/internal/measurement/zzz$b;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/r;->i:Landroid/app/Activity;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzz$b;->e:Lcom/google/android/gms/internal/measurement/zzz;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzz$a;-><init>(Lcom/google/android/gms/internal/measurement/zzz;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r;->j:Lcom/google/android/gms/internal/measurement/zzz$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzz$b;->e:Lcom/google/android/gms/internal/measurement/zzz;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzz;->c(Lcom/google/android/gms/internal/measurement/zzz;)Lcom/google/android/gms/internal/measurement/zzk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/r;->i:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzz$a;->f:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzk;->onActivityStarted(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    return-void
.end method
