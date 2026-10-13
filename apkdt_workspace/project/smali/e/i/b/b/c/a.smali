.class public final Le/i/b/b/c/a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.1.0"

# interfaces
.implements Lcom/google/android/gms/common/api/a$d$f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/i/b/b/c/a$a;
    }
.end annotation


# static fields
.field public static final n:Le/i/b/b/c/a;


# instance fields
.field private final e:Z

.field private final f:Z

.field private final g:Ljava/lang/String;

.field private final h:Z

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Z

.field private final l:Ljava/lang/Long;

.field private final m:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Le/i/b/b/c/a$a;

    invoke-direct {v0}, Le/i/b/b/c/a$a;-><init>()V

    .line 2
    new-instance v0, Le/i/b/b/c/a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v0

    .line 3
    invoke-direct/range {v1 .. v10}, Le/i/b/b/c/a;-><init>(ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V

    .line 4
    sput-object v0, Le/i/b/b/c/a;->n:Le/i/b/b/c/a;

    return-void
.end method

.method private constructor <init>(ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Le/i/b/b/c/a;->e:Z

    .line 3
    iput-boolean p1, p0, Le/i/b/b/c/a;->f:Z

    const/4 p2, 0x0

    .line 4
    iput-object p2, p0, Le/i/b/b/c/a;->g:Ljava/lang/String;

    .line 5
    iput-boolean p1, p0, Le/i/b/b/c/a;->h:Z

    .line 6
    iput-boolean p1, p0, Le/i/b/b/c/a;->k:Z

    .line 7
    iput-object p2, p0, Le/i/b/b/c/a;->i:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Le/i/b/b/c/a;->j:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Le/i/b/b/c/a;->l:Ljava/lang/Long;

    .line 10
    iput-object p2, p0, Le/i/b/b/c/a;->m:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Le/i/b/b/c/a;->l:Ljava/lang/Long;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Le/i/b/b/c/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Le/i/b/b/c/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Le/i/b/b/c/a;->m:Ljava/lang/Long;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/i/b/b/c/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Le/i/b/b/c/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Le/i/b/b/c/a;

    .line 3
    iget-boolean v1, p0, Le/i/b/b/c/a;->e:Z

    iget-boolean v3, p1, Le/i/b/b/c/a;->e:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Le/i/b/b/c/a;->f:Z

    iget-boolean v3, p1, Le/i/b/b/c/a;->f:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Le/i/b/b/c/a;->g:Ljava/lang/String;

    iget-object v3, p1, Le/i/b/b/c/a;->g:Ljava/lang/String;

    .line 4
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Le/i/b/b/c/a;->h:Z

    iget-boolean v3, p1, Le/i/b/b/c/a;->h:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Le/i/b/b/c/a;->k:Z

    iget-boolean v3, p1, Le/i/b/b/c/a;->k:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Le/i/b/b/c/a;->i:Ljava/lang/String;

    iget-object v3, p1, Le/i/b/b/c/a;->i:Ljava/lang/String;

    .line 5
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Le/i/b/b/c/a;->j:Ljava/lang/String;

    iget-object v3, p1, Le/i/b/b/c/a;->j:Ljava/lang/String;

    .line 6
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Le/i/b/b/c/a;->l:Ljava/lang/Long;

    iget-object v3, p1, Le/i/b/b/c/a;->l:Ljava/lang/Long;

    .line 7
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Le/i/b/b/c/a;->m:Ljava/lang/Long;

    iget-object p1, p1, Le/i/b/b/c/a;->m:Ljava/lang/Long;

    .line 8
    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/i/b/b/c/a;->h:Z

    return v0
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/i/b/b/c/a;->f:Z

    return v0
.end method

.method public final h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/i/b/b/c/a;->e:Z

    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-boolean v1, p0, Le/i/b/b/c/a;->e:Z

    .line 2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Le/i/b/b/c/a;->f:Z

    .line 3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Le/i/b/b/c/a;->g:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Le/i/b/b/c/a;->h:Z

    .line 4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Le/i/b/b/c/a;->k:Z

    .line 5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Le/i/b/b/c/a;->i:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Le/i/b/b/c/a;->j:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Le/i/b/b/c/a;->l:Ljava/lang/Long;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Le/i/b/b/c/a;->m:Ljava/lang/Long;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/common/internal/k;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/i/b/b/c/a;->k:Z

    return v0
.end method
