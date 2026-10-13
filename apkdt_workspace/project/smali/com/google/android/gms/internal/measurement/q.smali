.class final Lcom/google/android/gms/internal/measurement/q;
.super Lcom/google/android/gms/internal/measurement/zzz$a;


# instance fields
.field private final synthetic i:Ljava/lang/String;

.field private final synthetic j:Ljava/lang/String;

.field private final synthetic k:Ljava/lang/Object;

.field private final synthetic l:Z

.field private final synthetic m:Lcom/google/android/gms/internal/measurement/zzz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/q;->m:Lcom/google/android/gms/internal/measurement/zzz;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/q;->i:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/q;->j:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/q;->k:Ljava/lang/Object;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/measurement/q;->l:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzz$a;-><init>(Lcom/google/android/gms/internal/measurement/zzz;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/q;->m:Lcom/google/android/gms/internal/measurement/zzz;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzz;->c(Lcom/google/android/gms/internal/measurement/zzz;)Lcom/google/android/gms/internal/measurement/zzk;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/q;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/q;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/q;->k:Ljava/lang/Object;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v4

    iget-boolean v5, p0, Lcom/google/android/gms/internal/measurement/q;->l:Z

    iget-wide v6, p0, Lcom/google/android/gms/internal/measurement/zzz$a;->e:J

    .line 3
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/zzk;->setUserProperty(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;ZJ)V

    return-void
.end method
