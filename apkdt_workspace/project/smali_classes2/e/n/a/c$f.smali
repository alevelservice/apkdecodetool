.class Le/n/a/c$f;
.super Ljava/lang/Object;
.source "SqflitePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/n/a/c;->k(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Z

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Le/n/a/c$i;

.field final synthetic h:Ljava/lang/Boolean;

.field final synthetic i:Le/n/a/a;

.field final synthetic j:Lg/a/c/a/j;

.field final synthetic k:Z

.field final synthetic l:I

.field final synthetic m:Le/n/a/c;


# direct methods
.method constructor <init>(Le/n/a/c;ZLjava/lang/String;Le/n/a/c$i;Ljava/lang/Boolean;Le/n/a/a;Lg/a/c/a/j;ZI)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/n/a/c$f;->m:Le/n/a/c;

    iput-boolean p2, p0, Le/n/a/c$f;->e:Z

    iput-object p3, p0, Le/n/a/c$f;->f:Ljava/lang/String;

    iput-object p4, p0, Le/n/a/c$f;->g:Le/n/a/c$i;

    iput-object p5, p0, Le/n/a/c$f;->h:Ljava/lang/Boolean;

    iput-object p6, p0, Le/n/a/c$f;->i:Le/n/a/a;

    iput-object p7, p0, Le/n/a/c$f;->j:Lg/a/c/a/j;

    iput-boolean p8, p0, Le/n/a/c$f;->k:Z

    iput p9, p0, Le/n/a/c$f;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Le/n/a/c;->b()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Le/n/a/c$f;->e:Z

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Le/n/a/c$f;->f:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8
    iget-object v1, p0, Le/n/a/c$f;->g:Le/n/a/c$i;

    const-string v2, "sqlite_error"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "open_failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Le/n/a/c$f;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Le/n/a/c$i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    .line 10
    :cond_0
    :try_start_1
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Le/n/a/c$f;->h:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    iget-object v1, p0, Le/n/a/c$f;->i:Le/n/a/a;

    invoke-virtual {v1}, Le/n/a/a;->g()V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v1, p0, Le/n/a/c$f;->i:Le/n/a/a;

    invoke-virtual {v1}, Le/n/a/a;->f()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 13
    :goto_0
    :try_start_2
    invoke-static {}, Le/n/a/c;->c()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14
    :try_start_3
    iget-boolean v2, p0, Le/n/a/c$f;->k:Z

    if-eqz v2, :cond_2

    .line 15
    sget-object v2, Le/n/a/c;->g:Ljava/util/Map;

    iget-object v3, p0, Le/n/a/c$f;->f:Ljava/lang/String;

    iget v4, p0, Le/n/a/c$f;->l:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_2
    sget-object v2, Le/n/a/c;->q:Ljava/util/Map;

    iget v3, p0, Le/n/a/c$f;->l:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Le/n/a/c$f;->i:Le/n/a/a;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 18
    :try_start_4
    iget-object v1, p0, Le/n/a/c$f;->i:Le/n/a/a;

    iget v1, v1, Le/n/a/a;->d:I

    invoke-static {v1}, Le/n/a/b;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Le/n/a/c$f;->i:Le/n/a/a;

    invoke-virtual {v2}, Le/n/a/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "opened "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Le/n/a/c$f;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le/n/a/c$f;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    :cond_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 21
    iget-object v0, p0, Le/n/a/c$f;->g:Le/n/a/c$i;

    iget v1, p0, Le/n/a/c$f;->l:I

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Le/n/a/c;->a(IZZ)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/n/a/c$i;->a(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v2

    .line 22
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2

    :catch_0
    move-exception v1

    .line 23
    new-instance v2, Le/n/a/f/e;

    iget-object v3, p0, Le/n/a/c$f;->j:Lg/a/c/a/j;

    iget-object v4, p0, Le/n/a/c$f;->g:Le/n/a/c$i;

    invoke-direct {v2, v3, v4}, Le/n/a/f/e;-><init>(Lg/a/c/a/j;Lg/a/c/a/k$d;)V

    .line 24
    iget-object v3, p0, Le/n/a/c$f;->m:Le/n/a/c;

    iget-object v4, p0, Le/n/a/c$f;->i:Le/n/a/a;

    invoke-static {v3, v1, v2, v4}, Le/n/a/c;->a(Le/n/a/c;Ljava/lang/Exception;Le/n/a/f/f;Le/n/a/a;)V

    .line 25
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    .line 26
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method
