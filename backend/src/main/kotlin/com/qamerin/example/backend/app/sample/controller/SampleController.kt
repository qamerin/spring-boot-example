package com.qamerin.example.backend.app.sample.controller

import com.qamerin.example.backend.domain.model.message.Message
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController

@RestController
class SampleController {
    @GetMapping("/")
    fun index(): List<Message> = listOf(
        Message("1", "Hello!"),
        Message("2", "Bonjour!"),
        Message("3", "Privet!"),
    )
}
