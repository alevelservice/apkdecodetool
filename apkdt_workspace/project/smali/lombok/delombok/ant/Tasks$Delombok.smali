.class public Llombok/delombok/ant/Tasks$Delombok;
.super Lorg/apache/tools/ant/Task;
.source "DelombokTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llombok/delombok/ant/Tasks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Delombok"
.end annotation


# static fields
.field private static shadowLoader:Ljava/lang/ClassLoader;


# instance fields
.field private classpath:Lorg/apache/tools/ant/types/Path;

.field private encoding:Ljava/lang/String;

.field private formatOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Llombok/delombok/ant/Tasks$Format;",
            ">;"
        }
    .end annotation
.end field

.field private fromDir:Ljava/io/File;

.field private modulepath:Lorg/apache/tools/ant/types/Path;

.field private path:Lorg/apache/tools/ant/types/Path;

.field private sourcepath:Lorg/apache/tools/ant/types/Path;

.field private toDir:Ljava/io/File;

.field private verbose:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llombok/delombok/ant/Tasks$Delombok;->formatOptions:Ljava/util/List;

    return-void
.end method

.method public static shadowLoadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 165
    :try_start_0
    sget-object v0, Llombok/delombok/ant/Tasks$Delombok;->shadowLoader:Ljava/lang/ClassLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    :try_start_1
    const-string v0, "lombok.core.LombokNode"

    .line 167
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 169
    const-class v0, Llombok/delombok/ant/Tasks$Delombok;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Llombok/delombok/ant/Tasks$Delombok;->shadowLoader:Ljava/lang/ClassLoader;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v0, "lombok.launch.Main"

    .line 172
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getShadowClassLoader"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 173
    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 175
    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    sput-object v0, Llombok/delombok/ant/Tasks$Delombok;->shadowLoader:Ljava/lang/ClassLoader;

    .line 179
    :cond_0
    :goto_0
    sget-object v0, Llombok/delombok/ant/Tasks$Delombok;->shadowLoader:Ljava/lang/ClassLoader;

    invoke-static {p0, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 181
    instance-of v0, p0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 182
    :cond_1
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-nez v0, :cond_3

    .line 183
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 184
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 182
    :cond_3
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
.end method


# virtual methods
.method public addFileset(Lorg/apache/tools/ant/types/FileSet;)V
    .locals 2

    .line 153
    iget-object v0, p0, Llombok/delombok/ant/Tasks$Delombok;->path:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Llombok/delombok/ant/Tasks$Delombok;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Llombok/delombok/ant/Tasks$Delombok;->path:Lorg/apache/tools/ant/types/Path;

    .line 154
    :cond_0
    iget-object v0, p0, Llombok/delombok/ant/Tasks$Delombok;->path:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-void
.end method

.method public addFormat(Llombok/delombok/ant/Tasks$Format;)V
    .locals 1

    .line 158
    iget-object v0, p0, Llombok/delombok/ant/Tasks$Delombok;->formatOptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 94
    iget-object v0, p0, Llombok/delombok/ant/Tasks$Delombok;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Llombok/delombok/ant/Tasks$Delombok;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Llombok/delombok/ant/Tasks$Delombok;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 95
    :cond_0
    iget-object v0, p0, Llombok/delombok/ant/Tasks$Delombok;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createModulepath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 128
    iget-object v0, p0, Llombok/delombok/ant/Tasks$Delombok;->modulepath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Llombok/delombok/ant/Tasks$Delombok;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Llombok/delombok/ant/Tasks$Delombok;->modulepath:Lorg/apache/tools/ant/types/Path;

    .line 129
    :cond_0
    iget-object v0, p0, Llombok/delombok/ant/Tasks$Delombok;->modulepath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createSourcepath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 111
    iget-object v0, p0, Llombok/delombok/ant/Tasks$Delombok;->sourcepath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Llombok/delombok/ant/Tasks$Delombok;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Llombok/delombok/ant/Tasks$Delombok;->sourcepath:Lorg/apache/tools/ant/types/Path;

    .line 112
    :cond_0
    iget-object v0, p0, Llombok/delombok/ant/Tasks$Delombok;->sourcepath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public execute()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 190
    invoke-virtual {p0}, Llombok/delombok/ant/Tasks$Delombok;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v0

    :try_start_0
    const-string v1, "lombok.delombok.ant.DelombokTaskImpl"

    .line 193
    invoke-static {v1}, Llombok/delombok/ant/Tasks$Delombok;->shadowLoadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 194
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-lt v5, v4, :cond_0

    .line 210
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "execute"

    new-array v5, v6, [Ljava/lang/Class;

    const-class v7, Lorg/apache/tools/ant/Location;

    aput-object v7, v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v2

    .line 211
    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 194
    :cond_0
    aget-object v7, v3, v5

    .line 195
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_2

    .line 196
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 197
    invoke-virtual {v8, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 198
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v9, "formatOptions"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 199
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 200
    iget-object v7, p0, Llombok/delombok/ant/Tasks$Delombok;->formatOptions:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_2

    .line 204
    invoke-virtual {v8, v1, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 200
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Llombok/delombok/ant/Tasks$Format;

    .line 201
    invoke-virtual {v9}, Llombok/delombok/ant/Tasks$Format;->getValue()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 202
    invoke-virtual {v9}, Llombok/delombok/ant/Tasks$Format;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 201
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "\'value\' property required for <format>"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_4
    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v8, v1, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 213
    instance-of v1, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 214
    :cond_6
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_8

    .line 215
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_7

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 216
    :cond_7
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 214
    :cond_8
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 86
    iget-object v0, p0, Llombok/delombok/ant/Tasks$Delombok;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 87
    iput-object p1, p0, Llombok/delombok/ant/Tasks$Delombok;->classpath:Lorg/apache/tools/ant/types/Path;

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    :goto_0
    return-void
.end method

.method public setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 99
    invoke-virtual {p0}, Llombok/delombok/ant/Tasks$Delombok;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    .line 149
    iput-object p1, p0, Llombok/delombok/ant/Tasks$Delombok;->encoding:Ljava/lang/String;

    return-void
.end method

.method public setFrom(Ljava/io/File;)V
    .locals 0

    .line 137
    iput-object p1, p0, Llombok/delombok/ant/Tasks$Delombok;->fromDir:Ljava/io/File;

    return-void
.end method

.method public setModulepath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 120
    iget-object v0, p0, Llombok/delombok/ant/Tasks$Delombok;->modulepath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 121
    iput-object p1, p0, Llombok/delombok/ant/Tasks$Delombok;->modulepath:Lorg/apache/tools/ant/types/Path;

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    :goto_0
    return-void
.end method

.method public setModulepathRef(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 133
    invoke-virtual {p0}, Llombok/delombok/ant/Tasks$Delombok;->createModulepath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void
.end method

.method public setSourcepath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 103
    iget-object v0, p0, Llombok/delombok/ant/Tasks$Delombok;->sourcepath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 104
    iput-object p1, p0, Llombok/delombok/ant/Tasks$Delombok;->sourcepath:Lorg/apache/tools/ant/types/Path;

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    :goto_0
    return-void
.end method

.method public setSourcepathRef(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 116
    invoke-virtual {p0}, Llombok/delombok/ant/Tasks$Delombok;->createSourcepath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void
.end method

.method public setTo(Ljava/io/File;)V
    .locals 0

    .line 141
    iput-object p1, p0, Llombok/delombok/ant/Tasks$Delombok;->toDir:Ljava/io/File;

    return-void
.end method

.method public setVerbose(Z)V
    .locals 0

    .line 145
    iput-boolean p1, p0, Llombok/delombok/ant/Tasks$Delombok;->verbose:Z

    return-void
.end method
