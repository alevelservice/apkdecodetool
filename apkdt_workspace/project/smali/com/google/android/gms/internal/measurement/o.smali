.class final Lcom/google/android/gms/internal/measurement/o;
.super Lcom/google/android/gms/internal/measurement/zzz$a;


# instance fields
.field private final synthetic i:Ljava/lang/Long;

.field private final synthetic j:Ljava/lang/String;

.field private final synthetic k:Ljava/lang/String;

.field private final synthetic l:Landroid/os/Bundle;

.field private final synthetic m:Z

.field private final synthetic n:Z

.field private final synthetic o:Lcom/google/android/gms/internal/measurement/zzz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzz;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/o;->o:Lcom/google/android/gms/internal/measurement/zzz;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/o;->i:Ljava/lang/Long;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/o;->j:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/o;->k:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/o;->l:Landroid/os/Bundle;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/measurement/o;->m:Z

    iput-boolean p7, p0, Lcom/google/android/gms/internal/measurement/o;->n:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzz$a;-><init>(Lcom/google/android/gms/internal/measurement/zzz;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/o;->i:Ljava/lang/Long;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzz$a;->e:J

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    move-wide v8, v0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/o;->o:Lcom/google/android/gms/internal/measurement/zzz;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzz;->c(Lcom/google/android/gms/internal/measurement/zzz;)Lcom/google/android/gms/internal/measurement/zzk;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/o;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/o;->k:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/o;->l:Landroid/os/Bundle;

    iget-boolean v6, p0, Lcom/google/android/gms/internal/measurement/o;->m:Z

    iget-boolean v7, p0, Lcom/google/android/gms/internal/measurement/o;->n:Z

    invoke-interface/range {v2 .. v9}, Lcom/google/android/gms/internal/measurement/zzk;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    return-void
.end method
