.class final Lcom/google/android/gms/measurement/internal/r5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Ljava/lang/String;

.field private final synthetic g:J

.field private final synthetic h:Landroid/os/Bundle;

.field private final synthetic i:Z

.field private final synthetic j:Z

.field private final synthetic k:Z

.field private final synthetic l:Ljava/lang/String;

.field private final synthetic m:Lcom/google/android/gms/measurement/internal/p5;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/p5;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/r5;->m:Lcom/google/android/gms/measurement/internal/p5;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/r5;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/r5;->f:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/r5;->g:J

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/r5;->h:Landroid/os/Bundle;

    iput-boolean p7, p0, Lcom/google/android/gms/measurement/internal/r5;->i:Z

    iput-boolean p8, p0, Lcom/google/android/gms/measurement/internal/r5;->j:Z

    iput-boolean p9, p0, Lcom/google/android/gms/measurement/internal/r5;->k:Z

    iput-object p10, p0, Lcom/google/android/gms/measurement/internal/r5;->l:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r5;->m:Lcom/google/android/gms/measurement/internal/p5;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/r5;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/r5;->f:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/r5;->g:J

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/r5;->h:Landroid/os/Bundle;

    iget-boolean v6, p0, Lcom/google/android/gms/measurement/internal/r5;->i:Z

    iget-boolean v7, p0, Lcom/google/android/gms/measurement/internal/r5;->j:Z

    iget-boolean v8, p0, Lcom/google/android/gms/measurement/internal/r5;->k:Z

    iget-object v9, p0, Lcom/google/android/gms/measurement/internal/r5;->l:Ljava/lang/String;

    invoke-static/range {v0 .. v9}, Lcom/google/android/gms/measurement/internal/p5;->a(Lcom/google/android/gms/measurement/internal/p5;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method
