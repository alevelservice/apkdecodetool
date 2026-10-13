.class final Lcom/google/android/gms/internal/measurement/s;
.super Lcom/google/android/gms/internal/measurement/zzz$a;


# instance fields
.field private final synthetic i:Landroid/app/Activity;

.field private final synthetic j:Landroid/os/Bundle;

.field private final synthetic k:Lcom/google/android/gms/internal/measurement/zzz$b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzz$b;Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/s;->k:Lcom/google/android/gms/internal/measurement/zzz$b;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/s;->i:Landroid/app/Activity;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/s;->j:Landroid/os/Bundle;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzz$b;->e:Lcom/google/android/gms/internal/measurement/zzz;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzz$a;-><init>(Lcom/google/android/gms/internal/measurement/zzz;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/s;->k:Lcom/google/android/gms/internal/measurement/zzz$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzz$b;->e:Lcom/google/android/gms/internal/measurement/zzz;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzz;->c(Lcom/google/android/gms/internal/measurement/zzz;)Lcom/google/android/gms/internal/measurement/zzk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/s;->i:Landroid/app/Activity;

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/s;->j:Landroid/os/Bundle;

    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzz$a;->f:J

    .line 3
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzk;->onActivityCreated(Lcom/google/android/gms/dynamic/IObjectWrapper;Landroid/os/Bundle;J)V

    return-void
.end method
