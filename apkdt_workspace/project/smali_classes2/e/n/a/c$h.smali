.class Le/n/a/c$h;
.super Ljava/lang/Object;
.source "SqflitePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/n/a/c;->h(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Le/n/a/a;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Le/n/a/c$i;

.field final synthetic h:Le/n/a/c;


# direct methods
.method constructor <init>(Le/n/a/c;Le/n/a/a;Ljava/lang/String;Le/n/a/c$i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/n/a/c$h;->h:Le/n/a/c;

    iput-object p2, p0, Le/n/a/c$h;->e:Le/n/a/a;

    iput-object p3, p0, Le/n/a/c$h;->f:Ljava/lang/String;

    iput-object p4, p0, Le/n/a/c$h;->g:Le/n/a/c$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Le/n/a/c;->b()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/n/a/c$h;->e:Le/n/a/a;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Le/n/a/c$h;->h:Le/n/a/c;

    iget-object v2, p0, Le/n/a/c$h;->e:Le/n/a/a;

    invoke-static {v1, v2}, Le/n/a/c;->a(Le/n/a/c;Le/n/a/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    :try_start_1
    sget v1, Le/n/a/c;->j:I

    invoke-static {v1}, Le/n/a/b;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete database "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le/n/a/c$h;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 6
    :cond_1
    iget-object v1, p0, Le/n/a/c$h;->f:Ljava/lang/String;

    invoke-static {v1}, Le/n/a/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 7
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " while closing database "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Le/n/a/c;->a()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 8
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    iget-object v0, p0, Le/n/a/c$h;->g:Le/n/a/c$i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Le/n/a/c$i;->a(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v1

    .line 10
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
